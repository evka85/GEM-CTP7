-------------------------------------------------------------------------------
--                                                                            
--       Unit Name: tamu_ctp7_v7                                            
--                                                                            
--     Description: 
--
--                                                                            
-------------------------------------------------------------------------------
--                                                                            
--           Notes:                                                           
--                                                                            
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

library UNISIM;
use UNISIM.VCOMPONENTS.all;

library work;
use work.gth_pkg.all;

use work.ctp7_utils_pkg.all;
use work.ttc_pkg.all;
use work.tamu_ctp7_v7_build_cfg.all;
use work.gem_pkg.all;
use work.ipbus_pkg.all;
use work.axi_pkg.all;
use work.ipb_addr_decode.all;

--============================================================================
--                                                          Entity declaration
--============================================================================
entity tamu_ctp7_v7 is
  generic (
    C_DATE_CODE      : std_logic_vector (31 downto 0) := x"00000000";
    C_GITHASH_CODE   : std_logic_vector (31 downto 0) := x"00000000";
    C_GIT_REPO_DIRTY : std_logic                      := '0'
    );
  port (
    clk_200_diff_in_clk_p : in std_logic;
    clk_200_diff_in_clk_n : in std_logic;

    clk_40_ttc_p_i : in std_logic;      -- TTC backplane clock signals
    clk_40_ttc_n_i : in std_logic;
    ttc_data_p_i   : in std_logic;
    ttc_data_n_i   : in std_logic;

    LEDs : out std_logic_vector (1 downto 0);

    axi_c2c_v7_to_zynq_data        : out std_logic_vector (14 downto 0);
    axi_c2c_v7_to_zynq_clk         : out std_logic;
    axi_c2c_zynq_to_v7_clk         : in  std_logic;
    axi_c2c_zynq_to_v7_data        : in  std_logic_vector (14 downto 0);
    axi_c2c_v7_to_zynq_link_status : out std_logic;
    axi_c2c_zynq_to_v7_reset       : in  std_logic;

    refclk_F_0_p_i : in std_logic_vector (3 downto 0);
    refclk_F_0_n_i : in std_logic_vector (3 downto 0);
    refclk_F_1_p_i : in std_logic_vector (3 downto 0);
    refclk_F_1_n_i : in std_logic_vector (3 downto 0);

    refclk_B_0_p_i : in std_logic_vector (3 downto 1);
    refclk_B_0_n_i : in std_logic_vector (3 downto 1);
    refclk_B_1_p_i : in std_logic_vector (3 downto 1);
    refclk_B_1_n_i : in std_logic_vector (3 downto 1)

    );
end tamu_ctp7_v7;

--============================================================================
--                                                        Architecture section
--============================================================================
architecture tamu_ctp7_v7_arch of tamu_ctp7_v7 is

--============================================================================
--                                                      Component declarations
--===========================================================================
component system is =========!!!!!!! FINISH DEFINING THIS COMPONENT !!!!!!!===========
  port (
    clk_200_diff_in_clk_p : in std_logic;
    clk_200_diff_in_clk_n : in std_logic;

    clk_40_ttc_p_i : in std_logic;      -- TTC backplane clock signals
    clk_40_ttc_n_i : in std_logic;
    ttc_data_p_i   : in std_logic;
    ttc_data_n_i   : in std_logic;

    axi_c2c_v7_to_zynq_data        : out std_logic_vector (14 downto 0);
    axi_c2c_v7_to_zynq_clk         : out std_logic;
    axi_c2c_zynq_to_v7_clk         : in  std_logic;
    axi_c2c_zynq_to_v7_data        : in  std_logic_vector (14 downto 0);
    axi_c2c_v7_to_zynq_link_status : out std_logic;
    axi_c2c_zynq_to_v7_reset       : in  std_logic;

    refclk_F_0_p_i : in std_logic_vector (3 downto 0);
    refclk_F_0_n_i : in std_logic_vector (3 downto 0);
    refclk_F_1_p_i : in std_logic_vector (3 downto 0);
    refclk_F_1_n_i : in std_logic_vector (3 downto 0);

    refclk_B_0_p_i : in std_logic_vector (3 downto 1);
    refclk_B_0_n_i : in std_logic_vector (3 downto 1);
    refclk_B_1_p_i : in std_logic_vector (3 downto 1);
    refclk_B_1_n_i : in std_logic_vector (3 downto 1);

    ----------------- for GEM ------------------------
    axi_clk_o         : out std_logic;
    axi_reset_o       : out std_logic;
    ipb_axi_mosi_o    : out t_axi_lite_mosi;
    ipb_axi_miso_i    : in t_axi_lite_miso;

    ----------------- TTC ------------------------
    ttc_clks_o        : out t_ttc_clks;
    ttc_cmds_o        : out t_ttc_cmds;
    
    ----------------- GTH ------------------------
    clk_gth_tx_arr_o  : out std_logic_vector(g_NUM_OF_GTH_GTs-1 downto 0);
    clk_gth_rx_arr_o  : out std_logic_vector(g_NUM_OF_GTH_GTs-1 downto 0);
    gth_tx_data_arr_o : out t_gth_tx_data_arr(g_NUM_OF_GTH_GTs-1 downto 0);  
    gth_rx_data_arr_o : out t_gth_rx_data_arr(g_NUM_OF_GTH_GTs-1 downto 0);
    gth_rxreset_arr_o : out std_logic_vector(g_NUM_OF_GTH_GTs-1 downto 0); 
    gth_txreset_arr_o : out std_logic_vector(g_NUM_OF_GTH_GTs-1 downto 0);
    
    -- temporary test
    oh_reg_request_arr_o   : out t_reg_request_arr(11 downto 0);
    oh_reg_response_arr_i  : in t_reg_response_arr(11 downto 0)

    );
component system;

--============================================================================
--                                                         Signal declarations
--============================================================================

  -------------------------- GEM ----------------------------------
  signal oh_reg_request_arr   : t_reg_request_arr(11 downto 0);
  signal oh_reg_response_arr  : t_reg_response_arr(11 downto 0);

  -------------------------- IPbus ---------------------------------
  signal axi_clk              : std_logic;
  signal axi_reset            : std_logic;
  signal ipb_axi_mosi         : t_axi_lite_mosi;
  signal ipb_axi_miso         : t_axi_lite_miso;
  signal ipb_clk              : std_logic;
  signal ipb_miso_arr         : ipb_rbus_array(C_NUM_IPB_SLAVES-1 downto 0):= (others => (ipb_rdata => (others => '0'), ipb_ack => '0', ipb_err => '0')); 
  signal ipb_mosi_arr         : ipb_wbus_array(C_NUM_IPB_SLAVES-1 downto 0); 

  -------------------------- TTC ---------------------------------
  signal ttc_clks             : t_ttc_clks;
  signal ttc_cmds             : t_ttc_cmds;

  -------------------------- GTH ---------------------------------
  signal clk_gth_tx_arr       : std_logic_vector(g_NUM_OF_GTH_GTs-1 downto 0);
  signal clk_gth_rx_arr       : std_logic_vector(g_NUM_OF_GTH_GTs-1 downto 0);
  signal gth_tx_data_arr      : t_gth_tx_data_arr(g_NUM_OF_GTH_GTs-1 downto 0);  
  signal gth_rx_data_arr      : t_gth_rx_data_arr(g_NUM_OF_GTH_GTs-1 downto 0);
  signal gth_rxreset_arr      : std_logic_vector(g_NUM_OF_GTH_GTs-1 downto 0); 
  signal gth_txreset_arr      : std_logic_vector(g_NUM_OF_GTH_GTs-1 downto 0);

  -------------------------- DEBUG ----------------------------------
  attribute mark_debug : string;
  attribute mark_debug of oh_reg_request_arr: signal is "true";
  attribute mark_debug of oh_reg_response_arr: signal is "true";

--============================================================================
--                                                          Architecture begin
--============================================================================

begin

  LEDs(1) <= '1';
  LEDs(0) <= '1';

  -------------------------- SYSTEM ---------------------------------

  system_inst : entity work.system
--    generic map(
--      C_DATE_CODE      => C_DATE_CODE,
--      C_GITHASH_CODE   => C_GITHASH_CODE,
--      C_GIT_REPO_DIRTY => C_GIT_REPO_DIRTY
--    )
    port map(
      clk_200_diff_in_clk_p => clk_200_diff_in_clk_p,
      clk_200_diff_in_clk_n => clk_200_diff_in_clk_n,
  
      clk_40_ttc_p_i        => clk_40_ttc_p_i,
      clk_40_ttc_n_i        => clk_40_ttc_n_i,
      ttc_data_p_i          => ttc_data_p_i,
      ttc_data_n_i          => ttc_data_n_i,
  
      axi_c2c_v7_to_zynq_data => axi_c2c_v7_to_zynq_data,
      axi_c2c_v7_to_zynq_clk  => axi_c2c_v7_to_zynq_clk,
      axi_c2c_zynq_to_v7_clk  => axi_c2c_zynq_to_v7_clk,
      axi_c2c_zynq_to_v7_data => axi_c2c_zynq_to_v7_data,
      axi_c2c_v7_to_zynq_link_status => axi_c2c_v7_to_zynq_link_status,
      axi_c2c_zynq_to_v7_reset       => axi_c2c_zynq_to_v7_reset,
  
      refclk_F_0_p_i    => refclk_F_0_p_i,
      refclk_F_0_n_i    => refclk_F_0_n_i,
      refclk_F_1_p_i    => refclk_F_1_p_i,
      refclk_F_1_n_i    => refclk_F_1_n_i,
  
      refclk_B_0_p_i    => refclk_B_0_p_i,
      refclk_B_0_n_i    => refclk_B_0_n_i,
      refclk_B_1_p_i    => refclk_B_1_p_i,
      refclk_B_1_n_i    => refclk_B_1_n_i,
  
      axi_clk_o         => axi_clk,
      axi_reset_o       => axi_reset,
      ipb_axi_mosi_o    => ipb_axi_mosi,
      ipb_axi_miso_i    => ipb_axi_miso,
  
      ttc_clks_o        => ttc_clks,
      ttc_cmds_o        => ttc_cmds,
      
      clk_gth_tx_arr_o  => clk_gth_tx_arr,
      clk_gth_rx_arr_o  => clk_gth_rx_arr,
      gth_tx_data_arr_o => gth_tx_data_arr,
      gth_rx_data_arr_o => gth_rx_data_arr,
      gth_rxreset_arr_o => gth_rxreset_arr,
      gth_txreset_arr_o => gth_txreset_arr,
      
      oh_reg_request_arr_o => oh_reg_request_arr,
      oh_reg_response_arr_i => oh_reg_response_arr
      
    );
  
  -------------------------- IPBus ---------------------------------
  
--  axi_ipbus_bridge_inst : entity work.axi_ipbus_bridge
--    generic map(
--      C_NUM_IPB_SLAVES   => C_NUM_IPB_SLAVES,
--      C_S_AXI_DATA_WIDTH => 32,
--      C_S_AXI_ADDR_WIDTH => C_IPB_AXI_ADDR_WIDTH
--    )
--    port map(
--      ipb_clk_o     => ipb_clk,
--      ipb_miso_i    => ipb_miso,
--      ipb_mosi_o    => ipb_mosi,
      
--      S_AXI_ACLK    => ipb_axi.clk,
--      S_AXI_ARESETN => ipb_axi.reset(0),
--      S_AXI_AWADDR  => ipb_axi.awaddr(C_IPB_AXI_ADDR_WIDTH-1 downto 0),
--      S_AXI_AWPROT  => ipb_axi.awprot,
--      S_AXI_AWVALID => ipb_axi.awvalid(0),
--      S_AXI_AWREADY => ipb_axi.awready(0),
--      S_AXI_WDATA   => ipb_axi.wdata,
--      S_AXI_WSTRB   => ipb_axi.wstrb,
--      S_AXI_WVALID  => ipb_axi.wvalid(0),
--      S_AXI_WREADY  => ipb_axi.wready(0),
--      S_AXI_BRESP   => ipb_axi.bresp,
--      S_AXI_BVALID  => ipb_axi.bvalid(0),
--      S_AXI_BREADY  => ipb_axi.bready(0),
--      S_AXI_ARADDR  => ipb_axi.araddr(C_IPB_AXI_ADDR_WIDTH-1 downto 0),
--      S_AXI_ARPROT  => ipb_axi.arprot,
--      S_AXI_ARVALID => ipb_axi.arvalid(0),
--      S_AXI_ARREADY => ipb_axi.arready(0),
--      S_AXI_RDATA   => ipb_axi.rdata,
--      S_AXI_RRESP   => ipb_axi.rresp,
--      S_AXI_RVALID  => ipb_axi.rvalid(0),
--      S_AXI_RREADY  => ipb_axi.rready(0)
--    );

  -------------------------- OptoHybrids ---------------------------------
  
  --optohybrids : for i in 0 to 11 generate

    optohybrid_single_inst : entity work.optohybrid_single
      port map(
        reset_i                 => gth_rxreset_arr(6),
        ttc_clk_i               => ttc_clks,
        ttc_cmds_i              => ttc_cmds,
        gth_rx_usrclk_i         => clk_gth_rx_arr(6),
        gth_tx_usrclk_i         => clk_gth_tx_arr(6),
        gth_rx_data_i           => gth_rx_data_arr(6),
        gth_tx_data_o           => gth_tx_data_arr(6),
        reg_request_i           => oh_reg_request_arr(6),
        reg_response_o          => oh_reg_response_arr(6),
        ipb_clk_i               => ipb_clk,
        ipb_reg_miso_o          => ipb_miso_arr(C_IPB_SLV.oh_reg(6)),
        ipb_reg_mosi_i          => ipb_mosi_arr(C_IPB_SLV.oh_reg(6))
      );
    
  --end generate;

end tamu_ctp7_v7_arch;

--============================================================================
--                                                            Architecture end
--============================================================================

