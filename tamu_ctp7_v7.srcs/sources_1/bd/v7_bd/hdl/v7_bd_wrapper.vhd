--Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
--Date        : Wed Apr 13 10:50:35 2016
--Host        : evka-pc running 64-bit Ubuntu 14.04.4 LTS
--Command     : generate_target v7_bd_wrapper.bd
--Design      : v7_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity v7_bd_wrapper is
  port (
    BRAM_CTRL_DRP_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    BRAM_CTRL_DRP_clk : out STD_LOGIC;
    BRAM_CTRL_DRP_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_CTRL_DRP_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_CTRL_DRP_en : out STD_LOGIC;
    BRAM_CTRL_DRP_rst : out STD_LOGIC;
    BRAM_CTRL_DRP_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_CTRL_GTH_REG_FILE_addr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    BRAM_CTRL_GTH_REG_FILE_clk : out STD_LOGIC;
    BRAM_CTRL_GTH_REG_FILE_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_CTRL_GTH_REG_FILE_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_CTRL_GTH_REG_FILE_en : out STD_LOGIC;
    BRAM_CTRL_GTH_REG_FILE_rst : out STD_LOGIC;
    BRAM_CTRL_GTH_REG_FILE_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_CTRL_REG_FILE_addr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    BRAM_CTRL_REG_FILE_clk : out STD_LOGIC;
    BRAM_CTRL_REG_FILE_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_CTRL_REG_FILE_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_CTRL_REG_FILE_en : out STD_LOGIC;
    BRAM_CTRL_REG_FILE_rst : out STD_LOGIC;
    BRAM_CTRL_REG_FILE_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_CTRL_RX_RAM_addr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    BRAM_CTRL_RX_RAM_clk : out STD_LOGIC;
    BRAM_CTRL_RX_RAM_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_CTRL_RX_RAM_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_CTRL_RX_RAM_en : out STD_LOGIC;
    BRAM_CTRL_RX_RAM_rst : out STD_LOGIC;
    BRAM_CTRL_RX_RAM_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_CTRL_TX_RAM_addr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    BRAM_CTRL_TX_RAM_clk : out STD_LOGIC;
    BRAM_CTRL_TX_RAM_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_CTRL_TX_RAM_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_CTRL_TX_RAM_en : out STD_LOGIC;
    BRAM_CTRL_TX_RAM_rst : out STD_LOGIC;
    BRAM_CTRL_TX_RAM_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_c2c_v7_to_zynq_clk : out STD_LOGIC;
    axi_c2c_v7_to_zynq_data : out STD_LOGIC_VECTOR ( 14 downto 0 );
    axi_c2c_v7_to_zynq_link_status : out STD_LOGIC;
    axi_c2c_zynq_to_v7_clk : in STD_LOGIC;
    axi_c2c_zynq_to_v7_data : in STD_LOGIC_VECTOR ( 14 downto 0 );
    axi_c2c_zynq_to_v7_reset : in STD_LOGIC;
    clk_200_diff_in_clk_n : in STD_LOGIC;
    clk_200_diff_in_clk_p : in STD_LOGIC;
    clk_out1_200mhz : out STD_LOGIC;
    clk_out2_50mhz : out STD_LOGIC;
    ipb_clk_o : out STD_LOGIC;
    ipb_oh_miso_i_ack : in STD_LOGIC;
    ipb_oh_miso_i_err : in STD_LOGIC;
    ipb_oh_miso_i_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ipb_oh_mosi_o_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ipb_oh_mosi_o_strobe : out STD_LOGIC;
    ipb_oh_mosi_o_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ipb_oh_mosi_o_write : out STD_LOGIC
  );
end v7_bd_wrapper;

architecture STRUCTURE of v7_bd_wrapper is
  component v7_bd is
  port (
    BRAM_CTRL_DRP_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    BRAM_CTRL_DRP_clk : out STD_LOGIC;
    BRAM_CTRL_DRP_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_CTRL_DRP_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_CTRL_DRP_en : out STD_LOGIC;
    BRAM_CTRL_DRP_rst : out STD_LOGIC;
    BRAM_CTRL_DRP_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_CTRL_GTH_REG_FILE_addr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    BRAM_CTRL_GTH_REG_FILE_clk : out STD_LOGIC;
    BRAM_CTRL_GTH_REG_FILE_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_CTRL_GTH_REG_FILE_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_CTRL_GTH_REG_FILE_en : out STD_LOGIC;
    BRAM_CTRL_GTH_REG_FILE_rst : out STD_LOGIC;
    BRAM_CTRL_GTH_REG_FILE_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_CTRL_REG_FILE_addr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    BRAM_CTRL_REG_FILE_clk : out STD_LOGIC;
    BRAM_CTRL_REG_FILE_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_CTRL_REG_FILE_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_CTRL_REG_FILE_en : out STD_LOGIC;
    BRAM_CTRL_REG_FILE_rst : out STD_LOGIC;
    BRAM_CTRL_REG_FILE_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_CTRL_RX_RAM_addr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    BRAM_CTRL_RX_RAM_clk : out STD_LOGIC;
    BRAM_CTRL_RX_RAM_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_CTRL_RX_RAM_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_CTRL_RX_RAM_en : out STD_LOGIC;
    BRAM_CTRL_RX_RAM_rst : out STD_LOGIC;
    BRAM_CTRL_RX_RAM_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_CTRL_TX_RAM_addr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    BRAM_CTRL_TX_RAM_clk : out STD_LOGIC;
    BRAM_CTRL_TX_RAM_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_CTRL_TX_RAM_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_CTRL_TX_RAM_en : out STD_LOGIC;
    BRAM_CTRL_TX_RAM_rst : out STD_LOGIC;
    BRAM_CTRL_TX_RAM_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_200_diff_in_clk_n : in STD_LOGIC;
    clk_200_diff_in_clk_p : in STD_LOGIC;
    axi_c2c_zynq_to_v7_clk : in STD_LOGIC;
    axi_c2c_zynq_to_v7_data : in STD_LOGIC_VECTOR ( 14 downto 0 );
    axi_c2c_zynq_to_v7_reset : in STD_LOGIC;
    axi_c2c_v7_to_zynq_link_status : out STD_LOGIC;
    axi_c2c_v7_to_zynq_clk : out STD_LOGIC;
    axi_c2c_v7_to_zynq_data : out STD_LOGIC_VECTOR ( 14 downto 0 );
    clk_out1_200mhz : out STD_LOGIC;
    clk_out2_50mhz : out STD_LOGIC;
    ipb_oh_miso_i_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ipb_oh_miso_i_ack : in STD_LOGIC;
    ipb_oh_miso_i_err : in STD_LOGIC;
    ipb_oh_mosi_o_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ipb_oh_mosi_o_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ipb_oh_mosi_o_strobe : out STD_LOGIC;
    ipb_oh_mosi_o_write : out STD_LOGIC;
    ipb_clk_o : out STD_LOGIC
  );
  end component v7_bd;
begin
v7_bd_i: component v7_bd
     port map (
      BRAM_CTRL_DRP_addr(15 downto 0) => BRAM_CTRL_DRP_addr(15 downto 0),
      BRAM_CTRL_DRP_clk => BRAM_CTRL_DRP_clk,
      BRAM_CTRL_DRP_din(31 downto 0) => BRAM_CTRL_DRP_din(31 downto 0),
      BRAM_CTRL_DRP_dout(31 downto 0) => BRAM_CTRL_DRP_dout(31 downto 0),
      BRAM_CTRL_DRP_en => BRAM_CTRL_DRP_en,
      BRAM_CTRL_DRP_rst => BRAM_CTRL_DRP_rst,
      BRAM_CTRL_DRP_we(3 downto 0) => BRAM_CTRL_DRP_we(3 downto 0),
      BRAM_CTRL_GTH_REG_FILE_addr(16 downto 0) => BRAM_CTRL_GTH_REG_FILE_addr(16 downto 0),
      BRAM_CTRL_GTH_REG_FILE_clk => BRAM_CTRL_GTH_REG_FILE_clk,
      BRAM_CTRL_GTH_REG_FILE_din(31 downto 0) => BRAM_CTRL_GTH_REG_FILE_din(31 downto 0),
      BRAM_CTRL_GTH_REG_FILE_dout(31 downto 0) => BRAM_CTRL_GTH_REG_FILE_dout(31 downto 0),
      BRAM_CTRL_GTH_REG_FILE_en => BRAM_CTRL_GTH_REG_FILE_en,
      BRAM_CTRL_GTH_REG_FILE_rst => BRAM_CTRL_GTH_REG_FILE_rst,
      BRAM_CTRL_GTH_REG_FILE_we(3 downto 0) => BRAM_CTRL_GTH_REG_FILE_we(3 downto 0),
      BRAM_CTRL_REG_FILE_addr(16 downto 0) => BRAM_CTRL_REG_FILE_addr(16 downto 0),
      BRAM_CTRL_REG_FILE_clk => BRAM_CTRL_REG_FILE_clk,
      BRAM_CTRL_REG_FILE_din(31 downto 0) => BRAM_CTRL_REG_FILE_din(31 downto 0),
      BRAM_CTRL_REG_FILE_dout(31 downto 0) => BRAM_CTRL_REG_FILE_dout(31 downto 0),
      BRAM_CTRL_REG_FILE_en => BRAM_CTRL_REG_FILE_en,
      BRAM_CTRL_REG_FILE_rst => BRAM_CTRL_REG_FILE_rst,
      BRAM_CTRL_REG_FILE_we(3 downto 0) => BRAM_CTRL_REG_FILE_we(3 downto 0),
      BRAM_CTRL_RX_RAM_addr(16 downto 0) => BRAM_CTRL_RX_RAM_addr(16 downto 0),
      BRAM_CTRL_RX_RAM_clk => BRAM_CTRL_RX_RAM_clk,
      BRAM_CTRL_RX_RAM_din(31 downto 0) => BRAM_CTRL_RX_RAM_din(31 downto 0),
      BRAM_CTRL_RX_RAM_dout(31 downto 0) => BRAM_CTRL_RX_RAM_dout(31 downto 0),
      BRAM_CTRL_RX_RAM_en => BRAM_CTRL_RX_RAM_en,
      BRAM_CTRL_RX_RAM_rst => BRAM_CTRL_RX_RAM_rst,
      BRAM_CTRL_RX_RAM_we(3 downto 0) => BRAM_CTRL_RX_RAM_we(3 downto 0),
      BRAM_CTRL_TX_RAM_addr(16 downto 0) => BRAM_CTRL_TX_RAM_addr(16 downto 0),
      BRAM_CTRL_TX_RAM_clk => BRAM_CTRL_TX_RAM_clk,
      BRAM_CTRL_TX_RAM_din(31 downto 0) => BRAM_CTRL_TX_RAM_din(31 downto 0),
      BRAM_CTRL_TX_RAM_dout(31 downto 0) => BRAM_CTRL_TX_RAM_dout(31 downto 0),
      BRAM_CTRL_TX_RAM_en => BRAM_CTRL_TX_RAM_en,
      BRAM_CTRL_TX_RAM_rst => BRAM_CTRL_TX_RAM_rst,
      BRAM_CTRL_TX_RAM_we(3 downto 0) => BRAM_CTRL_TX_RAM_we(3 downto 0),
      axi_c2c_v7_to_zynq_clk => axi_c2c_v7_to_zynq_clk,
      axi_c2c_v7_to_zynq_data(14 downto 0) => axi_c2c_v7_to_zynq_data(14 downto 0),
      axi_c2c_v7_to_zynq_link_status => axi_c2c_v7_to_zynq_link_status,
      axi_c2c_zynq_to_v7_clk => axi_c2c_zynq_to_v7_clk,
      axi_c2c_zynq_to_v7_data(14 downto 0) => axi_c2c_zynq_to_v7_data(14 downto 0),
      axi_c2c_zynq_to_v7_reset => axi_c2c_zynq_to_v7_reset,
      clk_200_diff_in_clk_n => clk_200_diff_in_clk_n,
      clk_200_diff_in_clk_p => clk_200_diff_in_clk_p,
      clk_out1_200mhz => clk_out1_200mhz,
      clk_out2_50mhz => clk_out2_50mhz,
      ipb_clk_o => ipb_clk_o,
      ipb_oh_miso_i_ack => ipb_oh_miso_i_ack,
      ipb_oh_miso_i_err => ipb_oh_miso_i_err,
      ipb_oh_miso_i_rdata(31 downto 0) => ipb_oh_miso_i_rdata(31 downto 0),
      ipb_oh_mosi_o_addr(31 downto 0) => ipb_oh_mosi_o_addr(31 downto 0),
      ipb_oh_mosi_o_strobe => ipb_oh_mosi_o_strobe,
      ipb_oh_mosi_o_wdata(31 downto 0) => ipb_oh_mosi_o_wdata(31 downto 0),
      ipb_oh_mosi_o_write => ipb_oh_mosi_o_write
    );
end STRUCTURE;
