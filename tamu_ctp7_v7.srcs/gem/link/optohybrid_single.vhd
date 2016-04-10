----------------------------------------------------------------------------------
-- Company: TAMU
-- Engineer: Evaldas Juska (evka85@gmail.com)
-- 
-- Create Date: 04/08/2016 10:43:39 AM
-- Design Name: 
-- Module Name: optohybrid_single - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

library work;
use work.gth_pkg.all;
use work.ttc_pkg.all;
use work.gem_pkg.all;

entity optohybrid_single is
port (
    reset_i                 : in std_logic;
    ttc_clk_i               : in t_ttc_clks;
    ttc_cmds_i              : in t_ttc_cmds;
    gth_rx_usrclk_i         : in std_logic;
    gth_tx_usrclk_i         : in std_logic;
    gth_rx_data_i           : in t_gth_rx_data;
    gth_tx_data_o           : out t_gth_tx_data;
    reg_request_i           : in t_reg_request;
    reg_response_o          : out t_reg_response
);
end optohybrid_single;

architecture Behavioral of optohybrid_single is
    
    signal vfat2_t1         : t1_t;
    
    --== GTX requests ==--
    
    signal g2o_req_en       : std_logic;
    signal g2o_req_valid    : std_logic;
    signal g2o_req_data     : std_logic_vector(64 downto 0);
    
    signal o2g_req_en       : std_logic;
    signal o2g_req_data     : std_logic_vector(31 downto 0);
    signal o2g_req_error    : std_logic;    
    
    --== Tracking data ==--
    
    signal evt_en           : std_logic;
    signal evt_data         : std_logic_vector(15 downto 0);
        
begin

    -- TODO: transfer between the ttc clk and tx clk domains
    vfat2_t1.lv1a <= ttc_cmds_i.l1a;
    vfat2_t1.bc0  <= ttc_cmds_i.bc0;

    --==========================--
    --== SFP TX Tracking link ==--
    --==========================--
       
    link_tx_tracking_inst : entity work.link_tx_tracking
    port map(
        gtx_clk_i   => gth_tx_usrclk_i,   
        reset_i     => reset_i,           
        vfat2_t1_i  => vfat2_t1,        
        req_en_o    => g2o_req_en,   
        req_valid_i => g2o_req_valid,   
        req_data_i  => g2o_req_data,           
        tx_kchar_o  => gth_tx_data_o.txcharisk(1 downto 0),   
        tx_data_o   => gth_tx_data_o.txdata(15 downto 0)
    );  
    
    --==========================--
    --== SFP RX Tracking link ==--
    --==========================--
    
    link_rx_tracking_inst : entity work.link_rx_tracking
    port map(
        gtx_clk_i   => gth_rx_usrclk_i,   
        reset_i     => reset_i,           
        req_en_o    => o2g_req_en,   
        req_data_o  => o2g_req_data,   
        evt_en_o    => open,
        evt_data_o  => open,
        tk_error_o  => open,
        evt_rcvd_o  => open,
        rx_kchar_i  => gth_rx_data_i.rxcharisk(1 downto 0),   
        rx_data_i   => gth_rx_data_i.rxdata(15 downto 0)        
    );

    -- temporary hack to try out register reads/writes on the OH
    
    --== TX buffer ==--
    
    fifo_gtx_tx_inst : entity work.fifo_gtx_tx
    port map(
        rst     => reset_i,
        wr_clk  => reg_request_i.axi_reg_clk,
        wr_en   => reg_request_i.en,
        din     => reg_request_i.we & reg_request_i.addr(31 downto 24) & "0000" & reg_request_i.addr(19 downto 0) & reg_request_i.data,        
        rd_clk  => gth_tx_usrclk_i,
        rd_en   => g2o_req_en,
        valid   => g2o_req_valid,
        dout    => g2o_req_data,
        full    => open,
        empty   => open
    );
    
    --== Process inbetween is handled by the optical link ==--

    --== RX buffer ==--
    
    fifo_gtx_rx_inst : entity work.fifo_gtx_rx
    port map(
        rst     => reset_i,
        wr_clk  => gth_rx_usrclk_i,
        wr_en   => o2g_req_en,
        din     => o2g_req_data,        
        rd_clk  => reg_request_i.axi_reg_clk,
        rd_en   => '1',
        valid   => reg_response_o.en,
        dout    => reg_response_o.data,
        full    => open,
        empty   => open
    );
    
end Behavioral;
