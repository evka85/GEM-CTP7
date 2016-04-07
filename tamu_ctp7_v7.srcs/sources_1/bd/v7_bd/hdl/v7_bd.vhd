--Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2015.3 (lin64) Build 1368829 Mon Sep 28 20:06:39 MDT 2015
--Date        : Tue Feb 16 17:42:05 2016
--Host        : moonraker.cern.ch running 64-bit Scientific Linux CERN SLC release 6.7 (Carbon)
--Command     : generate_target v7_bd.bd
--Design      : v7_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_ZECGR5 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_ZECGR5;

architecture STRUCTURE of m00_couplers_imp_ZECGR5 is
  component v7_bd_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component v7_bd_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_AXI_araddr(10 downto 0) <= auto_pc_to_m00_couplers_ARADDR(10 downto 0);
  M_AXI_arvalid <= auto_pc_to_m00_couplers_ARVALID;
  M_AXI_awaddr(10 downto 0) <= auto_pc_to_m00_couplers_AWADDR(10 downto 0);
  M_AXI_awvalid <= auto_pc_to_m00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_arready <= m00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m00_couplers_to_auto_pc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rlast <= m00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m00_couplers_to_auto_pc_WREADY;
  auto_pc_to_m00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m00_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m00_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m00_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m00_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m00_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m00_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component v7_bd_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1(0),
      m_axi_araddr(31 downto 0) => auto_pc_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => NLW_auto_pc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => auto_pc_to_m00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_pc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => auto_pc_to_m00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => m00_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m00_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m00_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m00_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => m00_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m00_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m00_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m00_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m00_couplers_to_auto_pc_AWVALID,
      s_axi_bready => m00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => m00_couplers_to_auto_pc_RLAST,
      s_axi_rready => m00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m00_couplers_to_auto_pc_WLAST,
      s_axi_wready => m00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_1J24L6H is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m01_couplers_imp_1J24L6H;

architecture STRUCTURE of m01_couplers_imp_1J24L6H is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m01_couplers_to_m01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_m01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m01_couplers_to_m01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_m01_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(15 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(15 downto 0);
  M_AXI_arburst(1 downto 0) <= m01_couplers_to_m01_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= m01_couplers_to_m01_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= m01_couplers_to_m01_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= m01_couplers_to_m01_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= m01_couplers_to_m01_couplers_ARPROT(2 downto 0);
  M_AXI_arsize(2 downto 0) <= m01_couplers_to_m01_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid(0) <= m01_couplers_to_m01_couplers_ARVALID(0);
  M_AXI_awaddr(15 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(15 downto 0);
  M_AXI_awburst(1 downto 0) <= m01_couplers_to_m01_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= m01_couplers_to_m01_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= m01_couplers_to_m01_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= m01_couplers_to_m01_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= m01_couplers_to_m01_couplers_AWPROT(2 downto 0);
  M_AXI_awsize(2 downto 0) <= m01_couplers_to_m01_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid(0) <= m01_couplers_to_m01_couplers_AWVALID(0);
  M_AXI_bready(0) <= m01_couplers_to_m01_couplers_BREADY(0);
  M_AXI_rready(0) <= m01_couplers_to_m01_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wlast(0) <= m01_couplers_to_m01_couplers_WLAST(0);
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m01_couplers_to_m01_couplers_WVALID(0);
  S_AXI_arready(0) <= m01_couplers_to_m01_couplers_ARREADY(0);
  S_AXI_awready(0) <= m01_couplers_to_m01_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m01_couplers_to_m01_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rlast(0) <= m01_couplers_to_m01_couplers_RLAST(0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m01_couplers_to_m01_couplers_RVALID(0);
  S_AXI_wready(0) <= m01_couplers_to_m01_couplers_WREADY(0);
  m01_couplers_to_m01_couplers_ARADDR(15 downto 0) <= S_AXI_araddr(15 downto 0);
  m01_couplers_to_m01_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m01_couplers_to_m01_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m01_couplers_to_m01_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m01_couplers_to_m01_couplers_ARLOCK(0) <= S_AXI_arlock(0);
  m01_couplers_to_m01_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m01_couplers_to_m01_couplers_ARREADY(0) <= M_AXI_arready(0);
  m01_couplers_to_m01_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m01_couplers_to_m01_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m01_couplers_to_m01_couplers_AWADDR(15 downto 0) <= S_AXI_awaddr(15 downto 0);
  m01_couplers_to_m01_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m01_couplers_to_m01_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m01_couplers_to_m01_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m01_couplers_to_m01_couplers_AWLOCK(0) <= S_AXI_awlock(0);
  m01_couplers_to_m01_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m01_couplers_to_m01_couplers_AWREADY(0) <= M_AXI_awready(0);
  m01_couplers_to_m01_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m01_couplers_to_m01_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m01_couplers_to_m01_couplers_BREADY(0) <= S_AXI_bready(0);
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RLAST(0) <= M_AXI_rlast(0);
  m01_couplers_to_m01_couplers_RREADY(0) <= S_AXI_rready(0);
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WLAST(0) <= S_AXI_wlast(0);
  m01_couplers_to_m01_couplers_WREADY(0) <= M_AXI_wready(0);
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_1NOAWQO is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m02_couplers_imp_1NOAWQO;

architecture STRUCTURE of m02_couplers_imp_1NOAWQO is
  component v7_bd_auto_pc_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component v7_bd_auto_pc_1;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m02_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m02_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m02_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m02_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m02_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m02_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m02_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m02_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m02_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m02_couplers_WVALID : STD_LOGIC;
  signal m02_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m02_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m02_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m02_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m02_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m02_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m02_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m02_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m02_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m02_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m02_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m02_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m02_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m02_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(16 downto 0) <= auto_pc_to_m02_couplers_ARADDR(16 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_m02_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_m02_couplers_ARVALID;
  M_AXI_awaddr(16 downto 0) <= auto_pc_to_m02_couplers_AWADDR(16 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_m02_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_m02_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m02_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m02_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m02_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_arready <= m02_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m02_couplers_to_auto_pc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m02_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rlast <= m02_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m02_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m02_couplers_to_auto_pc_WREADY;
  auto_pc_to_m02_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m02_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m02_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m02_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m02_couplers_WREADY <= M_AXI_wready;
  m02_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m02_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m02_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m02_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m02_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m02_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m02_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m02_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m02_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m02_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m02_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m02_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m02_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m02_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m02_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m02_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m02_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m02_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m02_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m02_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m02_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m02_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component v7_bd_auto_pc_1
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1(0),
      m_axi_araddr(31 downto 0) => auto_pc_to_m02_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m02_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_m02_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m02_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m02_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m02_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_m02_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m02_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m02_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m02_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m02_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m02_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m02_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m02_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m02_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m02_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m02_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m02_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m02_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => m02_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m02_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m02_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m02_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m02_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m02_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m02_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m02_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m02_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m02_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m02_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => m02_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m02_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m02_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m02_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m02_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m02_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m02_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m02_couplers_to_auto_pc_AWVALID,
      s_axi_bready => m02_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m02_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m02_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m02_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => m02_couplers_to_auto_pc_RLAST,
      s_axi_rready => m02_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m02_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m02_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m02_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m02_couplers_to_auto_pc_WLAST,
      s_axi_wready => m02_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m02_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m02_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_URV99K is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m03_couplers_imp_URV99K;

architecture STRUCTURE of m03_couplers_imp_URV99K is
  component v7_bd_auto_pc_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component v7_bd_auto_pc_2;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m03_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m03_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m03_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m03_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m03_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m03_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m03_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m03_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m03_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m03_couplers_WVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m03_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m03_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m03_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m03_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(16 downto 0) <= auto_pc_to_m03_couplers_ARADDR(16 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_m03_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_m03_couplers_ARVALID;
  M_AXI_awaddr(16 downto 0) <= auto_pc_to_m03_couplers_AWADDR(16 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_m03_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_m03_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m03_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m03_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m03_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m03_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m03_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_arready <= m03_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m03_couplers_to_auto_pc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m03_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m03_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m03_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rlast <= m03_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m03_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m03_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m03_couplers_to_auto_pc_WREADY;
  auto_pc_to_m03_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m03_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m03_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m03_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m03_couplers_WREADY <= M_AXI_wready;
  m03_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m03_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m03_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m03_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m03_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m03_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m03_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m03_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m03_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m03_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m03_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m03_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m03_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m03_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m03_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m03_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m03_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m03_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m03_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m03_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m03_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m03_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m03_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m03_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m03_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m03_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component v7_bd_auto_pc_2
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1(0),
      m_axi_araddr(31 downto 0) => auto_pc_to_m03_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m03_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_m03_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m03_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m03_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m03_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_m03_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m03_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m03_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m03_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m03_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m03_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m03_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m03_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m03_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m03_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m03_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m03_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m03_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => m03_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m03_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m03_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m03_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m03_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m03_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m03_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m03_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m03_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m03_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m03_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => m03_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m03_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m03_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m03_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m03_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m03_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m03_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m03_couplers_to_auto_pc_AWVALID,
      s_axi_bready => m03_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m03_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m03_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m03_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => m03_couplers_to_auto_pc_RLAST,
      s_axi_rready => m03_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m03_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m03_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m03_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m03_couplers_to_auto_pc_WLAST,
      s_axi_wready => m03_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m03_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m03_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_1W8B35E is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m04_couplers_imp_1W8B35E;

architecture STRUCTURE of m04_couplers_imp_1W8B35E is
  component v7_bd_auto_pc_3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component v7_bd_auto_pc_3;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m04_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m04_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m04_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m04_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m04_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m04_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m04_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m04_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m04_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m04_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m04_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m04_couplers_WVALID : STD_LOGIC;
  signal m04_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m04_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m04_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m04_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m04_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m04_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m04_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m04_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m04_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m04_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m04_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m04_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m04_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m04_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(15 downto 0) <= auto_pc_to_m04_couplers_ARADDR(15 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_m04_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_m04_couplers_ARVALID;
  M_AXI_awaddr(15 downto 0) <= auto_pc_to_m04_couplers_AWADDR(15 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_m04_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_m04_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m04_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m04_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m04_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m04_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m04_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_arready <= m04_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m04_couplers_to_auto_pc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m04_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m04_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m04_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rlast <= m04_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m04_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m04_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m04_couplers_to_auto_pc_WREADY;
  auto_pc_to_m04_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m04_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m04_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m04_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m04_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m04_couplers_WREADY <= M_AXI_wready;
  m04_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m04_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m04_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m04_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m04_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m04_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m04_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m04_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m04_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m04_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m04_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m04_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m04_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m04_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m04_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m04_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m04_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m04_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m04_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m04_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m04_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m04_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m04_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m04_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m04_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m04_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component v7_bd_auto_pc_3
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1(0),
      m_axi_araddr(31 downto 0) => auto_pc_to_m04_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m04_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_m04_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m04_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m04_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m04_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_m04_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m04_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m04_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m04_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m04_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m04_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m04_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m04_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m04_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m04_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m04_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m04_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m04_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => m04_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m04_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m04_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m04_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m04_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m04_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m04_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m04_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m04_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m04_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m04_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => m04_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m04_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m04_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m04_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m04_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m04_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m04_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m04_couplers_to_auto_pc_AWVALID,
      s_axi_bready => m04_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m04_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m04_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m04_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => m04_couplers_to_auto_pc_RLAST,
      s_axi_rready => m04_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m04_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m04_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m04_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m04_couplers_to_auto_pc_WLAST,
      s_axi_wready => m04_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m04_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m04_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m05_couplers_imp_L3WQXM is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m05_couplers_imp_L3WQXM;

architecture STRUCTURE of m05_couplers_imp_L3WQXM is
  component v7_bd_auto_pc_4 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component v7_bd_auto_pc_4;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m05_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m05_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m05_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m05_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m05_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m05_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m05_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m05_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m05_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m05_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m05_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m05_couplers_WVALID : STD_LOGIC;
  signal m05_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m05_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m05_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m05_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m05_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m05_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m05_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m05_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m05_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m05_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m05_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m05_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m05_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m05_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(16 downto 0) <= auto_pc_to_m05_couplers_ARADDR(16 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_m05_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_m05_couplers_ARVALID;
  M_AXI_awaddr(16 downto 0) <= auto_pc_to_m05_couplers_AWADDR(16 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_m05_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_m05_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m05_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m05_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m05_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m05_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m05_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_arready <= m05_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m05_couplers_to_auto_pc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m05_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m05_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m05_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rlast <= m05_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m05_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m05_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m05_couplers_to_auto_pc_WREADY;
  auto_pc_to_m05_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m05_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m05_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m05_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m05_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m05_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m05_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m05_couplers_WREADY <= M_AXI_wready;
  m05_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m05_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m05_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m05_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m05_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m05_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m05_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m05_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m05_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m05_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m05_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m05_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m05_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m05_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m05_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m05_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m05_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m05_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m05_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m05_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m05_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m05_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m05_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m05_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m05_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m05_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component v7_bd_auto_pc_4
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1(0),
      m_axi_araddr(31 downto 0) => auto_pc_to_m05_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m05_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_m05_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m05_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m05_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m05_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_m05_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m05_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m05_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m05_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m05_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m05_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m05_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m05_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m05_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m05_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m05_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m05_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m05_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => m05_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m05_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m05_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m05_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m05_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m05_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m05_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m05_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m05_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m05_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m05_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => m05_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m05_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m05_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m05_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m05_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m05_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m05_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m05_couplers_to_auto_pc_AWVALID,
      s_axi_bready => m05_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m05_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m05_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m05_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => m05_couplers_to_auto_pc_RLAST,
      s_axi_rready => m05_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m05_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m05_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m05_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m05_couplers_to_auto_pc_WLAST,
      s_axi_wready => m05_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m05_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m05_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m06_couplers_imp_PX9VKZ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m06_couplers_imp_PX9VKZ;

architecture STRUCTURE of m06_couplers_imp_PX9VKZ is
  component v7_bd_auto_pc_5 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component v7_bd_auto_pc_5;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m06_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m06_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m06_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m06_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m06_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m06_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m06_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m06_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m06_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m06_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m06_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m06_couplers_WVALID : STD_LOGIC;
  signal m06_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m06_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m06_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m06_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m06_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m06_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m06_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m06_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m06_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m06_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m06_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m06_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m06_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m06_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(16 downto 0) <= auto_pc_to_m06_couplers_ARADDR(16 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_m06_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_m06_couplers_ARVALID;
  M_AXI_awaddr(16 downto 0) <= auto_pc_to_m06_couplers_AWADDR(16 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_m06_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_m06_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m06_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m06_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m06_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m06_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m06_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_arready <= m06_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m06_couplers_to_auto_pc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m06_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m06_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m06_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rlast <= m06_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m06_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m06_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m06_couplers_to_auto_pc_WREADY;
  auto_pc_to_m06_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m06_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m06_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m06_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m06_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m06_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m06_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m06_couplers_WREADY <= M_AXI_wready;
  m06_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m06_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m06_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m06_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m06_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m06_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m06_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m06_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m06_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m06_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m06_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m06_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m06_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m06_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m06_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m06_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m06_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m06_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m06_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m06_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m06_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m06_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m06_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m06_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m06_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m06_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component v7_bd_auto_pc_5
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1(0),
      m_axi_araddr(31 downto 0) => auto_pc_to_m06_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m06_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_m06_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m06_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m06_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m06_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_m06_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m06_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m06_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m06_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m06_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m06_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m06_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m06_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m06_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m06_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m06_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m06_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m06_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m06_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m06_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m06_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => m06_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m06_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m06_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m06_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m06_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m06_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m06_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m06_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m06_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m06_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m06_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => m06_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m06_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m06_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m06_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m06_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m06_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m06_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m06_couplers_to_auto_pc_AWVALID,
      s_axi_bready => m06_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m06_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m06_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m06_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => m06_couplers_to_auto_pc_RLAST,
      s_axi_rready => m06_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m06_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m06_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m06_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m06_couplers_to_auto_pc_WLAST,
      s_axi_wready => m06_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m06_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m06_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m07_couplers_imp_1RF8UDN is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arregion : out STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awregion : out STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m07_couplers_imp_1RF8UDN;

architecture STRUCTURE of m07_couplers_imp_1RF8UDN is
  signal m07_couplers_to_m07_couplers_ARADDR : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_ARBURST : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_ARCACHE : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_ARLEN : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_ARLOCK : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_ARPROT : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_ARQOS : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_ARREADY : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_ARREGION : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_ARSIZE : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_ARVALID : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_AWADDR : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_AWBURST : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_AWCACHE : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_AWLEN : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_AWLOCK : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_AWPROT : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_AWQOS : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_AWREADY : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_AWREGION : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_AWSIZE : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_AWVALID : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_BREADY : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_BRESP : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_BVALID : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_RDATA : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_RLAST : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_RREADY : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_RRESP : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_RVALID : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_WDATA : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_WLAST : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_WREADY : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_WSTRB : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= m07_couplers_to_m07_couplers_ARADDR;
  M_AXI_arburst <= m07_couplers_to_m07_couplers_ARBURST;
  M_AXI_arcache <= m07_couplers_to_m07_couplers_ARCACHE;
  M_AXI_arlen <= m07_couplers_to_m07_couplers_ARLEN;
  M_AXI_arlock <= m07_couplers_to_m07_couplers_ARLOCK;
  M_AXI_arprot <= m07_couplers_to_m07_couplers_ARPROT;
  M_AXI_arqos <= m07_couplers_to_m07_couplers_ARQOS;
  M_AXI_arregion <= m07_couplers_to_m07_couplers_ARREGION;
  M_AXI_arsize <= m07_couplers_to_m07_couplers_ARSIZE;
  M_AXI_arvalid <= m07_couplers_to_m07_couplers_ARVALID;
  M_AXI_awaddr <= m07_couplers_to_m07_couplers_AWADDR;
  M_AXI_awburst <= m07_couplers_to_m07_couplers_AWBURST;
  M_AXI_awcache <= m07_couplers_to_m07_couplers_AWCACHE;
  M_AXI_awlen <= m07_couplers_to_m07_couplers_AWLEN;
  M_AXI_awlock <= m07_couplers_to_m07_couplers_AWLOCK;
  M_AXI_awprot <= m07_couplers_to_m07_couplers_AWPROT;
  M_AXI_awqos <= m07_couplers_to_m07_couplers_AWQOS;
  M_AXI_awregion <= m07_couplers_to_m07_couplers_AWREGION;
  M_AXI_awsize <= m07_couplers_to_m07_couplers_AWSIZE;
  M_AXI_awvalid <= m07_couplers_to_m07_couplers_AWVALID;
  M_AXI_bready <= m07_couplers_to_m07_couplers_BREADY;
  M_AXI_rready <= m07_couplers_to_m07_couplers_RREADY;
  M_AXI_wdata <= m07_couplers_to_m07_couplers_WDATA;
  M_AXI_wlast <= m07_couplers_to_m07_couplers_WLAST;
  M_AXI_wstrb <= m07_couplers_to_m07_couplers_WSTRB;
  M_AXI_wvalid <= m07_couplers_to_m07_couplers_WVALID;
  S_AXI_arready <= m07_couplers_to_m07_couplers_ARREADY;
  S_AXI_awready <= m07_couplers_to_m07_couplers_AWREADY;
  S_AXI_bresp <= m07_couplers_to_m07_couplers_BRESP;
  S_AXI_bvalid <= m07_couplers_to_m07_couplers_BVALID;
  S_AXI_rdata <= m07_couplers_to_m07_couplers_RDATA;
  S_AXI_rlast <= m07_couplers_to_m07_couplers_RLAST;
  S_AXI_rresp <= m07_couplers_to_m07_couplers_RRESP;
  S_AXI_rvalid <= m07_couplers_to_m07_couplers_RVALID;
  S_AXI_wready <= m07_couplers_to_m07_couplers_WREADY;
  m07_couplers_to_m07_couplers_ARADDR <= S_AXI_araddr;
  m07_couplers_to_m07_couplers_ARBURST <= S_AXI_arburst;
  m07_couplers_to_m07_couplers_ARCACHE <= S_AXI_arcache;
  m07_couplers_to_m07_couplers_ARLEN <= S_AXI_arlen;
  m07_couplers_to_m07_couplers_ARLOCK <= S_AXI_arlock;
  m07_couplers_to_m07_couplers_ARPROT <= S_AXI_arprot;
  m07_couplers_to_m07_couplers_ARQOS <= S_AXI_arqos;
  m07_couplers_to_m07_couplers_ARREADY <= M_AXI_arready;
  m07_couplers_to_m07_couplers_ARREGION <= S_AXI_arregion;
  m07_couplers_to_m07_couplers_ARSIZE <= S_AXI_arsize;
  m07_couplers_to_m07_couplers_ARVALID <= S_AXI_arvalid;
  m07_couplers_to_m07_couplers_AWADDR <= S_AXI_awaddr;
  m07_couplers_to_m07_couplers_AWBURST <= S_AXI_awburst;
  m07_couplers_to_m07_couplers_AWCACHE <= S_AXI_awcache;
  m07_couplers_to_m07_couplers_AWLEN <= S_AXI_awlen;
  m07_couplers_to_m07_couplers_AWLOCK <= S_AXI_awlock;
  m07_couplers_to_m07_couplers_AWPROT <= S_AXI_awprot;
  m07_couplers_to_m07_couplers_AWQOS <= S_AXI_awqos;
  m07_couplers_to_m07_couplers_AWREADY <= M_AXI_awready;
  m07_couplers_to_m07_couplers_AWREGION <= S_AXI_awregion;
  m07_couplers_to_m07_couplers_AWSIZE <= S_AXI_awsize;
  m07_couplers_to_m07_couplers_AWVALID <= S_AXI_awvalid;
  m07_couplers_to_m07_couplers_BREADY <= S_AXI_bready;
  m07_couplers_to_m07_couplers_BRESP <= M_AXI_bresp;
  m07_couplers_to_m07_couplers_BVALID <= M_AXI_bvalid;
  m07_couplers_to_m07_couplers_RDATA <= M_AXI_rdata;
  m07_couplers_to_m07_couplers_RLAST <= M_AXI_rlast;
  m07_couplers_to_m07_couplers_RREADY <= S_AXI_rready;
  m07_couplers_to_m07_couplers_RRESP <= M_AXI_rresp;
  m07_couplers_to_m07_couplers_RVALID <= M_AXI_rvalid;
  m07_couplers_to_m07_couplers_WDATA <= S_AXI_wdata;
  m07_couplers_to_m07_couplers_WLAST <= S_AXI_wlast;
  m07_couplers_to_m07_couplers_WREADY <= M_AXI_wready;
  m07_couplers_to_m07_couplers_WSTRB <= S_AXI_wstrb;
  m07_couplers_to_m07_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m08_couplers_imp_1CV6FYU is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arregion : out STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awregion : out STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m08_couplers_imp_1CV6FYU;

architecture STRUCTURE of m08_couplers_imp_1CV6FYU is
  signal m08_couplers_to_m08_couplers_ARADDR : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_ARBURST : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_ARCACHE : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_ARLEN : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_ARLOCK : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_ARPROT : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_ARQOS : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_ARREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_ARREGION : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_ARSIZE : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_ARVALID : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWADDR : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWBURST : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWCACHE : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWLEN : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWLOCK : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWPROT : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWQOS : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWREGION : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWSIZE : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_AWVALID : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_BREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_BRESP : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_BVALID : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_RDATA : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_RLAST : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_RREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_RRESP : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_RVALID : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_WDATA : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_WLAST : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_WREADY : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_WSTRB : STD_LOGIC;
  signal m08_couplers_to_m08_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= m08_couplers_to_m08_couplers_ARADDR;
  M_AXI_arburst <= m08_couplers_to_m08_couplers_ARBURST;
  M_AXI_arcache <= m08_couplers_to_m08_couplers_ARCACHE;
  M_AXI_arlen <= m08_couplers_to_m08_couplers_ARLEN;
  M_AXI_arlock <= m08_couplers_to_m08_couplers_ARLOCK;
  M_AXI_arprot <= m08_couplers_to_m08_couplers_ARPROT;
  M_AXI_arqos <= m08_couplers_to_m08_couplers_ARQOS;
  M_AXI_arregion <= m08_couplers_to_m08_couplers_ARREGION;
  M_AXI_arsize <= m08_couplers_to_m08_couplers_ARSIZE;
  M_AXI_arvalid <= m08_couplers_to_m08_couplers_ARVALID;
  M_AXI_awaddr <= m08_couplers_to_m08_couplers_AWADDR;
  M_AXI_awburst <= m08_couplers_to_m08_couplers_AWBURST;
  M_AXI_awcache <= m08_couplers_to_m08_couplers_AWCACHE;
  M_AXI_awlen <= m08_couplers_to_m08_couplers_AWLEN;
  M_AXI_awlock <= m08_couplers_to_m08_couplers_AWLOCK;
  M_AXI_awprot <= m08_couplers_to_m08_couplers_AWPROT;
  M_AXI_awqos <= m08_couplers_to_m08_couplers_AWQOS;
  M_AXI_awregion <= m08_couplers_to_m08_couplers_AWREGION;
  M_AXI_awsize <= m08_couplers_to_m08_couplers_AWSIZE;
  M_AXI_awvalid <= m08_couplers_to_m08_couplers_AWVALID;
  M_AXI_bready <= m08_couplers_to_m08_couplers_BREADY;
  M_AXI_rready <= m08_couplers_to_m08_couplers_RREADY;
  M_AXI_wdata <= m08_couplers_to_m08_couplers_WDATA;
  M_AXI_wlast <= m08_couplers_to_m08_couplers_WLAST;
  M_AXI_wstrb <= m08_couplers_to_m08_couplers_WSTRB;
  M_AXI_wvalid <= m08_couplers_to_m08_couplers_WVALID;
  S_AXI_arready <= m08_couplers_to_m08_couplers_ARREADY;
  S_AXI_awready <= m08_couplers_to_m08_couplers_AWREADY;
  S_AXI_bresp <= m08_couplers_to_m08_couplers_BRESP;
  S_AXI_bvalid <= m08_couplers_to_m08_couplers_BVALID;
  S_AXI_rdata <= m08_couplers_to_m08_couplers_RDATA;
  S_AXI_rlast <= m08_couplers_to_m08_couplers_RLAST;
  S_AXI_rresp <= m08_couplers_to_m08_couplers_RRESP;
  S_AXI_rvalid <= m08_couplers_to_m08_couplers_RVALID;
  S_AXI_wready <= m08_couplers_to_m08_couplers_WREADY;
  m08_couplers_to_m08_couplers_ARADDR <= S_AXI_araddr;
  m08_couplers_to_m08_couplers_ARBURST <= S_AXI_arburst;
  m08_couplers_to_m08_couplers_ARCACHE <= S_AXI_arcache;
  m08_couplers_to_m08_couplers_ARLEN <= S_AXI_arlen;
  m08_couplers_to_m08_couplers_ARLOCK <= S_AXI_arlock;
  m08_couplers_to_m08_couplers_ARPROT <= S_AXI_arprot;
  m08_couplers_to_m08_couplers_ARQOS <= S_AXI_arqos;
  m08_couplers_to_m08_couplers_ARREADY <= M_AXI_arready;
  m08_couplers_to_m08_couplers_ARREGION <= S_AXI_arregion;
  m08_couplers_to_m08_couplers_ARSIZE <= S_AXI_arsize;
  m08_couplers_to_m08_couplers_ARVALID <= S_AXI_arvalid;
  m08_couplers_to_m08_couplers_AWADDR <= S_AXI_awaddr;
  m08_couplers_to_m08_couplers_AWBURST <= S_AXI_awburst;
  m08_couplers_to_m08_couplers_AWCACHE <= S_AXI_awcache;
  m08_couplers_to_m08_couplers_AWLEN <= S_AXI_awlen;
  m08_couplers_to_m08_couplers_AWLOCK <= S_AXI_awlock;
  m08_couplers_to_m08_couplers_AWPROT <= S_AXI_awprot;
  m08_couplers_to_m08_couplers_AWQOS <= S_AXI_awqos;
  m08_couplers_to_m08_couplers_AWREADY <= M_AXI_awready;
  m08_couplers_to_m08_couplers_AWREGION <= S_AXI_awregion;
  m08_couplers_to_m08_couplers_AWSIZE <= S_AXI_awsize;
  m08_couplers_to_m08_couplers_AWVALID <= S_AXI_awvalid;
  m08_couplers_to_m08_couplers_BREADY <= S_AXI_bready;
  m08_couplers_to_m08_couplers_BRESP <= M_AXI_bresp;
  m08_couplers_to_m08_couplers_BVALID <= M_AXI_bvalid;
  m08_couplers_to_m08_couplers_RDATA <= M_AXI_rdata;
  m08_couplers_to_m08_couplers_RLAST <= M_AXI_rlast;
  m08_couplers_to_m08_couplers_RREADY <= S_AXI_rready;
  m08_couplers_to_m08_couplers_RRESP <= M_AXI_rresp;
  m08_couplers_to_m08_couplers_RVALID <= M_AXI_rvalid;
  m08_couplers_to_m08_couplers_WDATA <= S_AXI_wdata;
  m08_couplers_to_m08_couplers_WLAST <= S_AXI_wlast;
  m08_couplers_to_m08_couplers_WREADY <= M_AXI_wready;
  m08_couplers_to_m08_couplers_WSTRB <= S_AXI_wstrb;
  m08_couplers_to_m08_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m09_couplers_imp_2QVHZ2 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arregion : out STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awregion : out STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m09_couplers_imp_2QVHZ2;

architecture STRUCTURE of m09_couplers_imp_2QVHZ2 is
  signal m09_couplers_to_m09_couplers_ARADDR : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_ARBURST : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_ARCACHE : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_ARLEN : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_ARLOCK : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_ARPROT : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_ARQOS : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_ARREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_ARREGION : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_ARSIZE : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_ARVALID : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_AWADDR : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_AWBURST : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_AWCACHE : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_AWLEN : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_AWLOCK : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_AWPROT : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_AWQOS : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_AWREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_AWREGION : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_AWSIZE : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_AWVALID : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_BREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_BRESP : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_BVALID : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_RDATA : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_RLAST : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_RREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_RRESP : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_RVALID : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_WDATA : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_WLAST : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_WREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_WSTRB : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= m09_couplers_to_m09_couplers_ARADDR;
  M_AXI_arburst <= m09_couplers_to_m09_couplers_ARBURST;
  M_AXI_arcache <= m09_couplers_to_m09_couplers_ARCACHE;
  M_AXI_arlen <= m09_couplers_to_m09_couplers_ARLEN;
  M_AXI_arlock <= m09_couplers_to_m09_couplers_ARLOCK;
  M_AXI_arprot <= m09_couplers_to_m09_couplers_ARPROT;
  M_AXI_arqos <= m09_couplers_to_m09_couplers_ARQOS;
  M_AXI_arregion <= m09_couplers_to_m09_couplers_ARREGION;
  M_AXI_arsize <= m09_couplers_to_m09_couplers_ARSIZE;
  M_AXI_arvalid <= m09_couplers_to_m09_couplers_ARVALID;
  M_AXI_awaddr <= m09_couplers_to_m09_couplers_AWADDR;
  M_AXI_awburst <= m09_couplers_to_m09_couplers_AWBURST;
  M_AXI_awcache <= m09_couplers_to_m09_couplers_AWCACHE;
  M_AXI_awlen <= m09_couplers_to_m09_couplers_AWLEN;
  M_AXI_awlock <= m09_couplers_to_m09_couplers_AWLOCK;
  M_AXI_awprot <= m09_couplers_to_m09_couplers_AWPROT;
  M_AXI_awqos <= m09_couplers_to_m09_couplers_AWQOS;
  M_AXI_awregion <= m09_couplers_to_m09_couplers_AWREGION;
  M_AXI_awsize <= m09_couplers_to_m09_couplers_AWSIZE;
  M_AXI_awvalid <= m09_couplers_to_m09_couplers_AWVALID;
  M_AXI_bready <= m09_couplers_to_m09_couplers_BREADY;
  M_AXI_rready <= m09_couplers_to_m09_couplers_RREADY;
  M_AXI_wdata <= m09_couplers_to_m09_couplers_WDATA;
  M_AXI_wlast <= m09_couplers_to_m09_couplers_WLAST;
  M_AXI_wstrb <= m09_couplers_to_m09_couplers_WSTRB;
  M_AXI_wvalid <= m09_couplers_to_m09_couplers_WVALID;
  S_AXI_arready <= m09_couplers_to_m09_couplers_ARREADY;
  S_AXI_awready <= m09_couplers_to_m09_couplers_AWREADY;
  S_AXI_bresp <= m09_couplers_to_m09_couplers_BRESP;
  S_AXI_bvalid <= m09_couplers_to_m09_couplers_BVALID;
  S_AXI_rdata <= m09_couplers_to_m09_couplers_RDATA;
  S_AXI_rlast <= m09_couplers_to_m09_couplers_RLAST;
  S_AXI_rresp <= m09_couplers_to_m09_couplers_RRESP;
  S_AXI_rvalid <= m09_couplers_to_m09_couplers_RVALID;
  S_AXI_wready <= m09_couplers_to_m09_couplers_WREADY;
  m09_couplers_to_m09_couplers_ARADDR <= S_AXI_araddr;
  m09_couplers_to_m09_couplers_ARBURST <= S_AXI_arburst;
  m09_couplers_to_m09_couplers_ARCACHE <= S_AXI_arcache;
  m09_couplers_to_m09_couplers_ARLEN <= S_AXI_arlen;
  m09_couplers_to_m09_couplers_ARLOCK <= S_AXI_arlock;
  m09_couplers_to_m09_couplers_ARPROT <= S_AXI_arprot;
  m09_couplers_to_m09_couplers_ARQOS <= S_AXI_arqos;
  m09_couplers_to_m09_couplers_ARREADY <= M_AXI_arready;
  m09_couplers_to_m09_couplers_ARREGION <= S_AXI_arregion;
  m09_couplers_to_m09_couplers_ARSIZE <= S_AXI_arsize;
  m09_couplers_to_m09_couplers_ARVALID <= S_AXI_arvalid;
  m09_couplers_to_m09_couplers_AWADDR <= S_AXI_awaddr;
  m09_couplers_to_m09_couplers_AWBURST <= S_AXI_awburst;
  m09_couplers_to_m09_couplers_AWCACHE <= S_AXI_awcache;
  m09_couplers_to_m09_couplers_AWLEN <= S_AXI_awlen;
  m09_couplers_to_m09_couplers_AWLOCK <= S_AXI_awlock;
  m09_couplers_to_m09_couplers_AWPROT <= S_AXI_awprot;
  m09_couplers_to_m09_couplers_AWQOS <= S_AXI_awqos;
  m09_couplers_to_m09_couplers_AWREADY <= M_AXI_awready;
  m09_couplers_to_m09_couplers_AWREGION <= S_AXI_awregion;
  m09_couplers_to_m09_couplers_AWSIZE <= S_AXI_awsize;
  m09_couplers_to_m09_couplers_AWVALID <= S_AXI_awvalid;
  m09_couplers_to_m09_couplers_BREADY <= S_AXI_bready;
  m09_couplers_to_m09_couplers_BRESP <= M_AXI_bresp;
  m09_couplers_to_m09_couplers_BVALID <= M_AXI_bvalid;
  m09_couplers_to_m09_couplers_RDATA <= M_AXI_rdata;
  m09_couplers_to_m09_couplers_RLAST <= M_AXI_rlast;
  m09_couplers_to_m09_couplers_RREADY <= S_AXI_rready;
  m09_couplers_to_m09_couplers_RRESP <= M_AXI_rresp;
  m09_couplers_to_m09_couplers_RVALID <= M_AXI_rvalid;
  m09_couplers_to_m09_couplers_WDATA <= S_AXI_wdata;
  m09_couplers_to_m09_couplers_WLAST <= S_AXI_wlast;
  m09_couplers_to_m09_couplers_WREADY <= M_AXI_wready;
  m09_couplers_to_m09_couplers_WSTRB <= S_AXI_wstrb;
  m09_couplers_to_m09_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m10_couplers_imp_1M9HV0G is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arregion : out STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awregion : out STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m10_couplers_imp_1M9HV0G;

architecture STRUCTURE of m10_couplers_imp_1M9HV0G is
  signal m10_couplers_to_m10_couplers_ARADDR : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_ARBURST : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_ARCACHE : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_ARLEN : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_ARLOCK : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_ARPROT : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_ARQOS : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_ARREADY : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_ARREGION : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_ARSIZE : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_ARVALID : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_AWADDR : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_AWBURST : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_AWCACHE : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_AWLEN : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_AWLOCK : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_AWPROT : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_AWQOS : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_AWREADY : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_AWREGION : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_AWSIZE : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_AWVALID : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_BREADY : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_BRESP : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_BVALID : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_RDATA : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_RLAST : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_RREADY : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_RRESP : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_RVALID : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_WDATA : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_WLAST : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_WREADY : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_WSTRB : STD_LOGIC;
  signal m10_couplers_to_m10_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= m10_couplers_to_m10_couplers_ARADDR;
  M_AXI_arburst <= m10_couplers_to_m10_couplers_ARBURST;
  M_AXI_arcache <= m10_couplers_to_m10_couplers_ARCACHE;
  M_AXI_arlen <= m10_couplers_to_m10_couplers_ARLEN;
  M_AXI_arlock <= m10_couplers_to_m10_couplers_ARLOCK;
  M_AXI_arprot <= m10_couplers_to_m10_couplers_ARPROT;
  M_AXI_arqos <= m10_couplers_to_m10_couplers_ARQOS;
  M_AXI_arregion <= m10_couplers_to_m10_couplers_ARREGION;
  M_AXI_arsize <= m10_couplers_to_m10_couplers_ARSIZE;
  M_AXI_arvalid <= m10_couplers_to_m10_couplers_ARVALID;
  M_AXI_awaddr <= m10_couplers_to_m10_couplers_AWADDR;
  M_AXI_awburst <= m10_couplers_to_m10_couplers_AWBURST;
  M_AXI_awcache <= m10_couplers_to_m10_couplers_AWCACHE;
  M_AXI_awlen <= m10_couplers_to_m10_couplers_AWLEN;
  M_AXI_awlock <= m10_couplers_to_m10_couplers_AWLOCK;
  M_AXI_awprot <= m10_couplers_to_m10_couplers_AWPROT;
  M_AXI_awqos <= m10_couplers_to_m10_couplers_AWQOS;
  M_AXI_awregion <= m10_couplers_to_m10_couplers_AWREGION;
  M_AXI_awsize <= m10_couplers_to_m10_couplers_AWSIZE;
  M_AXI_awvalid <= m10_couplers_to_m10_couplers_AWVALID;
  M_AXI_bready <= m10_couplers_to_m10_couplers_BREADY;
  M_AXI_rready <= m10_couplers_to_m10_couplers_RREADY;
  M_AXI_wdata <= m10_couplers_to_m10_couplers_WDATA;
  M_AXI_wlast <= m10_couplers_to_m10_couplers_WLAST;
  M_AXI_wstrb <= m10_couplers_to_m10_couplers_WSTRB;
  M_AXI_wvalid <= m10_couplers_to_m10_couplers_WVALID;
  S_AXI_arready <= m10_couplers_to_m10_couplers_ARREADY;
  S_AXI_awready <= m10_couplers_to_m10_couplers_AWREADY;
  S_AXI_bresp <= m10_couplers_to_m10_couplers_BRESP;
  S_AXI_bvalid <= m10_couplers_to_m10_couplers_BVALID;
  S_AXI_rdata <= m10_couplers_to_m10_couplers_RDATA;
  S_AXI_rlast <= m10_couplers_to_m10_couplers_RLAST;
  S_AXI_rresp <= m10_couplers_to_m10_couplers_RRESP;
  S_AXI_rvalid <= m10_couplers_to_m10_couplers_RVALID;
  S_AXI_wready <= m10_couplers_to_m10_couplers_WREADY;
  m10_couplers_to_m10_couplers_ARADDR <= S_AXI_araddr;
  m10_couplers_to_m10_couplers_ARBURST <= S_AXI_arburst;
  m10_couplers_to_m10_couplers_ARCACHE <= S_AXI_arcache;
  m10_couplers_to_m10_couplers_ARLEN <= S_AXI_arlen;
  m10_couplers_to_m10_couplers_ARLOCK <= S_AXI_arlock;
  m10_couplers_to_m10_couplers_ARPROT <= S_AXI_arprot;
  m10_couplers_to_m10_couplers_ARQOS <= S_AXI_arqos;
  m10_couplers_to_m10_couplers_ARREADY <= M_AXI_arready;
  m10_couplers_to_m10_couplers_ARREGION <= S_AXI_arregion;
  m10_couplers_to_m10_couplers_ARSIZE <= S_AXI_arsize;
  m10_couplers_to_m10_couplers_ARVALID <= S_AXI_arvalid;
  m10_couplers_to_m10_couplers_AWADDR <= S_AXI_awaddr;
  m10_couplers_to_m10_couplers_AWBURST <= S_AXI_awburst;
  m10_couplers_to_m10_couplers_AWCACHE <= S_AXI_awcache;
  m10_couplers_to_m10_couplers_AWLEN <= S_AXI_awlen;
  m10_couplers_to_m10_couplers_AWLOCK <= S_AXI_awlock;
  m10_couplers_to_m10_couplers_AWPROT <= S_AXI_awprot;
  m10_couplers_to_m10_couplers_AWQOS <= S_AXI_awqos;
  m10_couplers_to_m10_couplers_AWREADY <= M_AXI_awready;
  m10_couplers_to_m10_couplers_AWREGION <= S_AXI_awregion;
  m10_couplers_to_m10_couplers_AWSIZE <= S_AXI_awsize;
  m10_couplers_to_m10_couplers_AWVALID <= S_AXI_awvalid;
  m10_couplers_to_m10_couplers_BREADY <= S_AXI_bready;
  m10_couplers_to_m10_couplers_BRESP <= M_AXI_bresp;
  m10_couplers_to_m10_couplers_BVALID <= M_AXI_bvalid;
  m10_couplers_to_m10_couplers_RDATA <= M_AXI_rdata;
  m10_couplers_to_m10_couplers_RLAST <= M_AXI_rlast;
  m10_couplers_to_m10_couplers_RREADY <= S_AXI_rready;
  m10_couplers_to_m10_couplers_RRESP <= M_AXI_rresp;
  m10_couplers_to_m10_couplers_RVALID <= M_AXI_rvalid;
  m10_couplers_to_m10_couplers_WDATA <= S_AXI_wdata;
  m10_couplers_to_m10_couplers_WLAST <= S_AXI_wlast;
  m10_couplers_to_m10_couplers_WREADY <= M_AXI_wready;
  m10_couplers_to_m10_couplers_WSTRB <= S_AXI_wstrb;
  m10_couplers_to_m10_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m11_couplers_imp_SV42AW is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arregion : out STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awregion : out STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m11_couplers_imp_SV42AW;

architecture STRUCTURE of m11_couplers_imp_SV42AW is
  signal m11_couplers_to_m11_couplers_ARADDR : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_ARBURST : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_ARCACHE : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_ARLEN : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_ARLOCK : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_ARPROT : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_ARQOS : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_ARREADY : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_ARREGION : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_ARSIZE : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_ARVALID : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_AWADDR : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_AWBURST : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_AWCACHE : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_AWLEN : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_AWLOCK : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_AWPROT : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_AWQOS : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_AWREADY : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_AWREGION : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_AWSIZE : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_AWVALID : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_BREADY : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_BRESP : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_BVALID : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_RDATA : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_RLAST : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_RREADY : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_RRESP : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_RVALID : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_WDATA : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_WLAST : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_WREADY : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_WSTRB : STD_LOGIC;
  signal m11_couplers_to_m11_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= m11_couplers_to_m11_couplers_ARADDR;
  M_AXI_arburst <= m11_couplers_to_m11_couplers_ARBURST;
  M_AXI_arcache <= m11_couplers_to_m11_couplers_ARCACHE;
  M_AXI_arlen <= m11_couplers_to_m11_couplers_ARLEN;
  M_AXI_arlock <= m11_couplers_to_m11_couplers_ARLOCK;
  M_AXI_arprot <= m11_couplers_to_m11_couplers_ARPROT;
  M_AXI_arqos <= m11_couplers_to_m11_couplers_ARQOS;
  M_AXI_arregion <= m11_couplers_to_m11_couplers_ARREGION;
  M_AXI_arsize <= m11_couplers_to_m11_couplers_ARSIZE;
  M_AXI_arvalid <= m11_couplers_to_m11_couplers_ARVALID;
  M_AXI_awaddr <= m11_couplers_to_m11_couplers_AWADDR;
  M_AXI_awburst <= m11_couplers_to_m11_couplers_AWBURST;
  M_AXI_awcache <= m11_couplers_to_m11_couplers_AWCACHE;
  M_AXI_awlen <= m11_couplers_to_m11_couplers_AWLEN;
  M_AXI_awlock <= m11_couplers_to_m11_couplers_AWLOCK;
  M_AXI_awprot <= m11_couplers_to_m11_couplers_AWPROT;
  M_AXI_awqos <= m11_couplers_to_m11_couplers_AWQOS;
  M_AXI_awregion <= m11_couplers_to_m11_couplers_AWREGION;
  M_AXI_awsize <= m11_couplers_to_m11_couplers_AWSIZE;
  M_AXI_awvalid <= m11_couplers_to_m11_couplers_AWVALID;
  M_AXI_bready <= m11_couplers_to_m11_couplers_BREADY;
  M_AXI_rready <= m11_couplers_to_m11_couplers_RREADY;
  M_AXI_wdata <= m11_couplers_to_m11_couplers_WDATA;
  M_AXI_wlast <= m11_couplers_to_m11_couplers_WLAST;
  M_AXI_wstrb <= m11_couplers_to_m11_couplers_WSTRB;
  M_AXI_wvalid <= m11_couplers_to_m11_couplers_WVALID;
  S_AXI_arready <= m11_couplers_to_m11_couplers_ARREADY;
  S_AXI_awready <= m11_couplers_to_m11_couplers_AWREADY;
  S_AXI_bresp <= m11_couplers_to_m11_couplers_BRESP;
  S_AXI_bvalid <= m11_couplers_to_m11_couplers_BVALID;
  S_AXI_rdata <= m11_couplers_to_m11_couplers_RDATA;
  S_AXI_rlast <= m11_couplers_to_m11_couplers_RLAST;
  S_AXI_rresp <= m11_couplers_to_m11_couplers_RRESP;
  S_AXI_rvalid <= m11_couplers_to_m11_couplers_RVALID;
  S_AXI_wready <= m11_couplers_to_m11_couplers_WREADY;
  m11_couplers_to_m11_couplers_ARADDR <= S_AXI_araddr;
  m11_couplers_to_m11_couplers_ARBURST <= S_AXI_arburst;
  m11_couplers_to_m11_couplers_ARCACHE <= S_AXI_arcache;
  m11_couplers_to_m11_couplers_ARLEN <= S_AXI_arlen;
  m11_couplers_to_m11_couplers_ARLOCK <= S_AXI_arlock;
  m11_couplers_to_m11_couplers_ARPROT <= S_AXI_arprot;
  m11_couplers_to_m11_couplers_ARQOS <= S_AXI_arqos;
  m11_couplers_to_m11_couplers_ARREADY <= M_AXI_arready;
  m11_couplers_to_m11_couplers_ARREGION <= S_AXI_arregion;
  m11_couplers_to_m11_couplers_ARSIZE <= S_AXI_arsize;
  m11_couplers_to_m11_couplers_ARVALID <= S_AXI_arvalid;
  m11_couplers_to_m11_couplers_AWADDR <= S_AXI_awaddr;
  m11_couplers_to_m11_couplers_AWBURST <= S_AXI_awburst;
  m11_couplers_to_m11_couplers_AWCACHE <= S_AXI_awcache;
  m11_couplers_to_m11_couplers_AWLEN <= S_AXI_awlen;
  m11_couplers_to_m11_couplers_AWLOCK <= S_AXI_awlock;
  m11_couplers_to_m11_couplers_AWPROT <= S_AXI_awprot;
  m11_couplers_to_m11_couplers_AWQOS <= S_AXI_awqos;
  m11_couplers_to_m11_couplers_AWREADY <= M_AXI_awready;
  m11_couplers_to_m11_couplers_AWREGION <= S_AXI_awregion;
  m11_couplers_to_m11_couplers_AWSIZE <= S_AXI_awsize;
  m11_couplers_to_m11_couplers_AWVALID <= S_AXI_awvalid;
  m11_couplers_to_m11_couplers_BREADY <= S_AXI_bready;
  m11_couplers_to_m11_couplers_BRESP <= M_AXI_bresp;
  m11_couplers_to_m11_couplers_BVALID <= M_AXI_bvalid;
  m11_couplers_to_m11_couplers_RDATA <= M_AXI_rdata;
  m11_couplers_to_m11_couplers_RLAST <= M_AXI_rlast;
  m11_couplers_to_m11_couplers_RREADY <= S_AXI_rready;
  m11_couplers_to_m11_couplers_RRESP <= M_AXI_rresp;
  m11_couplers_to_m11_couplers_RVALID <= M_AXI_rvalid;
  m11_couplers_to_m11_couplers_WDATA <= S_AXI_wdata;
  m11_couplers_to_m11_couplers_WLAST <= S_AXI_wlast;
  m11_couplers_to_m11_couplers_WREADY <= M_AXI_wready;
  m11_couplers_to_m11_couplers_WSTRB <= S_AXI_wstrb;
  m11_couplers_to_m11_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m12_couplers_imp_XPEK0H is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arregion : out STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awregion : out STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m12_couplers_imp_XPEK0H;

architecture STRUCTURE of m12_couplers_imp_XPEK0H is
  signal m12_couplers_to_m12_couplers_ARADDR : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_ARBURST : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_ARCACHE : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_ARLEN : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_ARLOCK : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_ARPROT : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_ARQOS : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_ARREADY : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_ARREGION : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_ARSIZE : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_ARVALID : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_AWADDR : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_AWBURST : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_AWCACHE : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_AWLEN : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_AWLOCK : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_AWPROT : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_AWQOS : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_AWREADY : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_AWREGION : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_AWSIZE : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_AWVALID : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_BREADY : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_BRESP : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_BVALID : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_RDATA : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_RLAST : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_RREADY : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_RRESP : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_RVALID : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_WDATA : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_WLAST : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_WREADY : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_WSTRB : STD_LOGIC;
  signal m12_couplers_to_m12_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= m12_couplers_to_m12_couplers_ARADDR;
  M_AXI_arburst <= m12_couplers_to_m12_couplers_ARBURST;
  M_AXI_arcache <= m12_couplers_to_m12_couplers_ARCACHE;
  M_AXI_arlen <= m12_couplers_to_m12_couplers_ARLEN;
  M_AXI_arlock <= m12_couplers_to_m12_couplers_ARLOCK;
  M_AXI_arprot <= m12_couplers_to_m12_couplers_ARPROT;
  M_AXI_arqos <= m12_couplers_to_m12_couplers_ARQOS;
  M_AXI_arregion <= m12_couplers_to_m12_couplers_ARREGION;
  M_AXI_arsize <= m12_couplers_to_m12_couplers_ARSIZE;
  M_AXI_arvalid <= m12_couplers_to_m12_couplers_ARVALID;
  M_AXI_awaddr <= m12_couplers_to_m12_couplers_AWADDR;
  M_AXI_awburst <= m12_couplers_to_m12_couplers_AWBURST;
  M_AXI_awcache <= m12_couplers_to_m12_couplers_AWCACHE;
  M_AXI_awlen <= m12_couplers_to_m12_couplers_AWLEN;
  M_AXI_awlock <= m12_couplers_to_m12_couplers_AWLOCK;
  M_AXI_awprot <= m12_couplers_to_m12_couplers_AWPROT;
  M_AXI_awqos <= m12_couplers_to_m12_couplers_AWQOS;
  M_AXI_awregion <= m12_couplers_to_m12_couplers_AWREGION;
  M_AXI_awsize <= m12_couplers_to_m12_couplers_AWSIZE;
  M_AXI_awvalid <= m12_couplers_to_m12_couplers_AWVALID;
  M_AXI_bready <= m12_couplers_to_m12_couplers_BREADY;
  M_AXI_rready <= m12_couplers_to_m12_couplers_RREADY;
  M_AXI_wdata <= m12_couplers_to_m12_couplers_WDATA;
  M_AXI_wlast <= m12_couplers_to_m12_couplers_WLAST;
  M_AXI_wstrb <= m12_couplers_to_m12_couplers_WSTRB;
  M_AXI_wvalid <= m12_couplers_to_m12_couplers_WVALID;
  S_AXI_arready <= m12_couplers_to_m12_couplers_ARREADY;
  S_AXI_awready <= m12_couplers_to_m12_couplers_AWREADY;
  S_AXI_bresp <= m12_couplers_to_m12_couplers_BRESP;
  S_AXI_bvalid <= m12_couplers_to_m12_couplers_BVALID;
  S_AXI_rdata <= m12_couplers_to_m12_couplers_RDATA;
  S_AXI_rlast <= m12_couplers_to_m12_couplers_RLAST;
  S_AXI_rresp <= m12_couplers_to_m12_couplers_RRESP;
  S_AXI_rvalid <= m12_couplers_to_m12_couplers_RVALID;
  S_AXI_wready <= m12_couplers_to_m12_couplers_WREADY;
  m12_couplers_to_m12_couplers_ARADDR <= S_AXI_araddr;
  m12_couplers_to_m12_couplers_ARBURST <= S_AXI_arburst;
  m12_couplers_to_m12_couplers_ARCACHE <= S_AXI_arcache;
  m12_couplers_to_m12_couplers_ARLEN <= S_AXI_arlen;
  m12_couplers_to_m12_couplers_ARLOCK <= S_AXI_arlock;
  m12_couplers_to_m12_couplers_ARPROT <= S_AXI_arprot;
  m12_couplers_to_m12_couplers_ARQOS <= S_AXI_arqos;
  m12_couplers_to_m12_couplers_ARREADY <= M_AXI_arready;
  m12_couplers_to_m12_couplers_ARREGION <= S_AXI_arregion;
  m12_couplers_to_m12_couplers_ARSIZE <= S_AXI_arsize;
  m12_couplers_to_m12_couplers_ARVALID <= S_AXI_arvalid;
  m12_couplers_to_m12_couplers_AWADDR <= S_AXI_awaddr;
  m12_couplers_to_m12_couplers_AWBURST <= S_AXI_awburst;
  m12_couplers_to_m12_couplers_AWCACHE <= S_AXI_awcache;
  m12_couplers_to_m12_couplers_AWLEN <= S_AXI_awlen;
  m12_couplers_to_m12_couplers_AWLOCK <= S_AXI_awlock;
  m12_couplers_to_m12_couplers_AWPROT <= S_AXI_awprot;
  m12_couplers_to_m12_couplers_AWQOS <= S_AXI_awqos;
  m12_couplers_to_m12_couplers_AWREADY <= M_AXI_awready;
  m12_couplers_to_m12_couplers_AWREGION <= S_AXI_awregion;
  m12_couplers_to_m12_couplers_AWSIZE <= S_AXI_awsize;
  m12_couplers_to_m12_couplers_AWVALID <= S_AXI_awvalid;
  m12_couplers_to_m12_couplers_BREADY <= S_AXI_bready;
  m12_couplers_to_m12_couplers_BRESP <= M_AXI_bresp;
  m12_couplers_to_m12_couplers_BVALID <= M_AXI_bvalid;
  m12_couplers_to_m12_couplers_RDATA <= M_AXI_rdata;
  m12_couplers_to_m12_couplers_RLAST <= M_AXI_rlast;
  m12_couplers_to_m12_couplers_RREADY <= S_AXI_rready;
  m12_couplers_to_m12_couplers_RRESP <= M_AXI_rresp;
  m12_couplers_to_m12_couplers_RVALID <= M_AXI_rvalid;
  m12_couplers_to_m12_couplers_WDATA <= S_AXI_wdata;
  m12_couplers_to_m12_couplers_WLAST <= S_AXI_wlast;
  m12_couplers_to_m12_couplers_WREADY <= M_AXI_wready;
  m12_couplers_to_m12_couplers_WSTRB <= S_AXI_wstrb;
  m12_couplers_to_m12_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m13_couplers_imp_1HEWHFD is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arregion : out STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awregion : out STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m13_couplers_imp_1HEWHFD;

architecture STRUCTURE of m13_couplers_imp_1HEWHFD is
  signal m13_couplers_to_m13_couplers_ARADDR : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_ARBURST : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_ARCACHE : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_ARLEN : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_ARLOCK : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_ARPROT : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_ARQOS : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_ARREADY : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_ARREGION : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_ARSIZE : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_ARVALID : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_AWADDR : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_AWBURST : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_AWCACHE : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_AWLEN : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_AWLOCK : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_AWPROT : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_AWQOS : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_AWREADY : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_AWREGION : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_AWSIZE : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_AWVALID : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_BREADY : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_BRESP : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_BVALID : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_RDATA : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_RLAST : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_RREADY : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_RRESP : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_RVALID : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_WDATA : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_WLAST : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_WREADY : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_WSTRB : STD_LOGIC;
  signal m13_couplers_to_m13_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= m13_couplers_to_m13_couplers_ARADDR;
  M_AXI_arburst <= m13_couplers_to_m13_couplers_ARBURST;
  M_AXI_arcache <= m13_couplers_to_m13_couplers_ARCACHE;
  M_AXI_arlen <= m13_couplers_to_m13_couplers_ARLEN;
  M_AXI_arlock <= m13_couplers_to_m13_couplers_ARLOCK;
  M_AXI_arprot <= m13_couplers_to_m13_couplers_ARPROT;
  M_AXI_arqos <= m13_couplers_to_m13_couplers_ARQOS;
  M_AXI_arregion <= m13_couplers_to_m13_couplers_ARREGION;
  M_AXI_arsize <= m13_couplers_to_m13_couplers_ARSIZE;
  M_AXI_arvalid <= m13_couplers_to_m13_couplers_ARVALID;
  M_AXI_awaddr <= m13_couplers_to_m13_couplers_AWADDR;
  M_AXI_awburst <= m13_couplers_to_m13_couplers_AWBURST;
  M_AXI_awcache <= m13_couplers_to_m13_couplers_AWCACHE;
  M_AXI_awlen <= m13_couplers_to_m13_couplers_AWLEN;
  M_AXI_awlock <= m13_couplers_to_m13_couplers_AWLOCK;
  M_AXI_awprot <= m13_couplers_to_m13_couplers_AWPROT;
  M_AXI_awqos <= m13_couplers_to_m13_couplers_AWQOS;
  M_AXI_awregion <= m13_couplers_to_m13_couplers_AWREGION;
  M_AXI_awsize <= m13_couplers_to_m13_couplers_AWSIZE;
  M_AXI_awvalid <= m13_couplers_to_m13_couplers_AWVALID;
  M_AXI_bready <= m13_couplers_to_m13_couplers_BREADY;
  M_AXI_rready <= m13_couplers_to_m13_couplers_RREADY;
  M_AXI_wdata <= m13_couplers_to_m13_couplers_WDATA;
  M_AXI_wlast <= m13_couplers_to_m13_couplers_WLAST;
  M_AXI_wstrb <= m13_couplers_to_m13_couplers_WSTRB;
  M_AXI_wvalid <= m13_couplers_to_m13_couplers_WVALID;
  S_AXI_arready <= m13_couplers_to_m13_couplers_ARREADY;
  S_AXI_awready <= m13_couplers_to_m13_couplers_AWREADY;
  S_AXI_bresp <= m13_couplers_to_m13_couplers_BRESP;
  S_AXI_bvalid <= m13_couplers_to_m13_couplers_BVALID;
  S_AXI_rdata <= m13_couplers_to_m13_couplers_RDATA;
  S_AXI_rlast <= m13_couplers_to_m13_couplers_RLAST;
  S_AXI_rresp <= m13_couplers_to_m13_couplers_RRESP;
  S_AXI_rvalid <= m13_couplers_to_m13_couplers_RVALID;
  S_AXI_wready <= m13_couplers_to_m13_couplers_WREADY;
  m13_couplers_to_m13_couplers_ARADDR <= S_AXI_araddr;
  m13_couplers_to_m13_couplers_ARBURST <= S_AXI_arburst;
  m13_couplers_to_m13_couplers_ARCACHE <= S_AXI_arcache;
  m13_couplers_to_m13_couplers_ARLEN <= S_AXI_arlen;
  m13_couplers_to_m13_couplers_ARLOCK <= S_AXI_arlock;
  m13_couplers_to_m13_couplers_ARPROT <= S_AXI_arprot;
  m13_couplers_to_m13_couplers_ARQOS <= S_AXI_arqos;
  m13_couplers_to_m13_couplers_ARREADY <= M_AXI_arready;
  m13_couplers_to_m13_couplers_ARREGION <= S_AXI_arregion;
  m13_couplers_to_m13_couplers_ARSIZE <= S_AXI_arsize;
  m13_couplers_to_m13_couplers_ARVALID <= S_AXI_arvalid;
  m13_couplers_to_m13_couplers_AWADDR <= S_AXI_awaddr;
  m13_couplers_to_m13_couplers_AWBURST <= S_AXI_awburst;
  m13_couplers_to_m13_couplers_AWCACHE <= S_AXI_awcache;
  m13_couplers_to_m13_couplers_AWLEN <= S_AXI_awlen;
  m13_couplers_to_m13_couplers_AWLOCK <= S_AXI_awlock;
  m13_couplers_to_m13_couplers_AWPROT <= S_AXI_awprot;
  m13_couplers_to_m13_couplers_AWQOS <= S_AXI_awqos;
  m13_couplers_to_m13_couplers_AWREADY <= M_AXI_awready;
  m13_couplers_to_m13_couplers_AWREGION <= S_AXI_awregion;
  m13_couplers_to_m13_couplers_AWSIZE <= S_AXI_awsize;
  m13_couplers_to_m13_couplers_AWVALID <= S_AXI_awvalid;
  m13_couplers_to_m13_couplers_BREADY <= S_AXI_bready;
  m13_couplers_to_m13_couplers_BRESP <= M_AXI_bresp;
  m13_couplers_to_m13_couplers_BVALID <= M_AXI_bvalid;
  m13_couplers_to_m13_couplers_RDATA <= M_AXI_rdata;
  m13_couplers_to_m13_couplers_RLAST <= M_AXI_rlast;
  m13_couplers_to_m13_couplers_RREADY <= S_AXI_rready;
  m13_couplers_to_m13_couplers_RRESP <= M_AXI_rresp;
  m13_couplers_to_m13_couplers_RVALID <= M_AXI_rvalid;
  m13_couplers_to_m13_couplers_WDATA <= S_AXI_wdata;
  m13_couplers_to_m13_couplers_WLAST <= S_AXI_wlast;
  m13_couplers_to_m13_couplers_WREADY <= M_AXI_wready;
  m13_couplers_to_m13_couplers_WSTRB <= S_AXI_wstrb;
  m13_couplers_to_m13_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m14_couplers_imp_PE05CZ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arregion : out STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awregion : out STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m14_couplers_imp_PE05CZ;

architecture STRUCTURE of m14_couplers_imp_PE05CZ is
  signal m14_couplers_to_m14_couplers_ARADDR : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_ARBURST : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_ARCACHE : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_ARLEN : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_ARLOCK : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_ARPROT : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_ARQOS : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_ARREADY : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_ARREGION : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_ARSIZE : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_ARVALID : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_AWADDR : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_AWBURST : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_AWCACHE : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_AWLEN : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_AWLOCK : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_AWPROT : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_AWQOS : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_AWREADY : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_AWREGION : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_AWSIZE : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_AWVALID : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_BREADY : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_BRESP : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_BVALID : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_RDATA : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_RLAST : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_RREADY : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_RRESP : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_RVALID : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_WDATA : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_WLAST : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_WREADY : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_WSTRB : STD_LOGIC;
  signal m14_couplers_to_m14_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= m14_couplers_to_m14_couplers_ARADDR;
  M_AXI_arburst <= m14_couplers_to_m14_couplers_ARBURST;
  M_AXI_arcache <= m14_couplers_to_m14_couplers_ARCACHE;
  M_AXI_arlen <= m14_couplers_to_m14_couplers_ARLEN;
  M_AXI_arlock <= m14_couplers_to_m14_couplers_ARLOCK;
  M_AXI_arprot <= m14_couplers_to_m14_couplers_ARPROT;
  M_AXI_arqos <= m14_couplers_to_m14_couplers_ARQOS;
  M_AXI_arregion <= m14_couplers_to_m14_couplers_ARREGION;
  M_AXI_arsize <= m14_couplers_to_m14_couplers_ARSIZE;
  M_AXI_arvalid <= m14_couplers_to_m14_couplers_ARVALID;
  M_AXI_awaddr <= m14_couplers_to_m14_couplers_AWADDR;
  M_AXI_awburst <= m14_couplers_to_m14_couplers_AWBURST;
  M_AXI_awcache <= m14_couplers_to_m14_couplers_AWCACHE;
  M_AXI_awlen <= m14_couplers_to_m14_couplers_AWLEN;
  M_AXI_awlock <= m14_couplers_to_m14_couplers_AWLOCK;
  M_AXI_awprot <= m14_couplers_to_m14_couplers_AWPROT;
  M_AXI_awqos <= m14_couplers_to_m14_couplers_AWQOS;
  M_AXI_awregion <= m14_couplers_to_m14_couplers_AWREGION;
  M_AXI_awsize <= m14_couplers_to_m14_couplers_AWSIZE;
  M_AXI_awvalid <= m14_couplers_to_m14_couplers_AWVALID;
  M_AXI_bready <= m14_couplers_to_m14_couplers_BREADY;
  M_AXI_rready <= m14_couplers_to_m14_couplers_RREADY;
  M_AXI_wdata <= m14_couplers_to_m14_couplers_WDATA;
  M_AXI_wlast <= m14_couplers_to_m14_couplers_WLAST;
  M_AXI_wstrb <= m14_couplers_to_m14_couplers_WSTRB;
  M_AXI_wvalid <= m14_couplers_to_m14_couplers_WVALID;
  S_AXI_arready <= m14_couplers_to_m14_couplers_ARREADY;
  S_AXI_awready <= m14_couplers_to_m14_couplers_AWREADY;
  S_AXI_bresp <= m14_couplers_to_m14_couplers_BRESP;
  S_AXI_bvalid <= m14_couplers_to_m14_couplers_BVALID;
  S_AXI_rdata <= m14_couplers_to_m14_couplers_RDATA;
  S_AXI_rlast <= m14_couplers_to_m14_couplers_RLAST;
  S_AXI_rresp <= m14_couplers_to_m14_couplers_RRESP;
  S_AXI_rvalid <= m14_couplers_to_m14_couplers_RVALID;
  S_AXI_wready <= m14_couplers_to_m14_couplers_WREADY;
  m14_couplers_to_m14_couplers_ARADDR <= S_AXI_araddr;
  m14_couplers_to_m14_couplers_ARBURST <= S_AXI_arburst;
  m14_couplers_to_m14_couplers_ARCACHE <= S_AXI_arcache;
  m14_couplers_to_m14_couplers_ARLEN <= S_AXI_arlen;
  m14_couplers_to_m14_couplers_ARLOCK <= S_AXI_arlock;
  m14_couplers_to_m14_couplers_ARPROT <= S_AXI_arprot;
  m14_couplers_to_m14_couplers_ARQOS <= S_AXI_arqos;
  m14_couplers_to_m14_couplers_ARREADY <= M_AXI_arready;
  m14_couplers_to_m14_couplers_ARREGION <= S_AXI_arregion;
  m14_couplers_to_m14_couplers_ARSIZE <= S_AXI_arsize;
  m14_couplers_to_m14_couplers_ARVALID <= S_AXI_arvalid;
  m14_couplers_to_m14_couplers_AWADDR <= S_AXI_awaddr;
  m14_couplers_to_m14_couplers_AWBURST <= S_AXI_awburst;
  m14_couplers_to_m14_couplers_AWCACHE <= S_AXI_awcache;
  m14_couplers_to_m14_couplers_AWLEN <= S_AXI_awlen;
  m14_couplers_to_m14_couplers_AWLOCK <= S_AXI_awlock;
  m14_couplers_to_m14_couplers_AWPROT <= S_AXI_awprot;
  m14_couplers_to_m14_couplers_AWQOS <= S_AXI_awqos;
  m14_couplers_to_m14_couplers_AWREADY <= M_AXI_awready;
  m14_couplers_to_m14_couplers_AWREGION <= S_AXI_awregion;
  m14_couplers_to_m14_couplers_AWSIZE <= S_AXI_awsize;
  m14_couplers_to_m14_couplers_AWVALID <= S_AXI_awvalid;
  m14_couplers_to_m14_couplers_BREADY <= S_AXI_bready;
  m14_couplers_to_m14_couplers_BRESP <= M_AXI_bresp;
  m14_couplers_to_m14_couplers_BVALID <= M_AXI_bvalid;
  m14_couplers_to_m14_couplers_RDATA <= M_AXI_rdata;
  m14_couplers_to_m14_couplers_RLAST <= M_AXI_rlast;
  m14_couplers_to_m14_couplers_RREADY <= S_AXI_rready;
  m14_couplers_to_m14_couplers_RRESP <= M_AXI_rresp;
  m14_couplers_to_m14_couplers_RVALID <= M_AXI_rvalid;
  m14_couplers_to_m14_couplers_WDATA <= S_AXI_wdata;
  m14_couplers_to_m14_couplers_WLAST <= S_AXI_wlast;
  m14_couplers_to_m14_couplers_WREADY <= M_AXI_wready;
  m14_couplers_to_m14_couplers_WSTRB <= S_AXI_wstrb;
  m14_couplers_to_m14_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_BMC27U is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_BMC27U;

architecture STRUCTURE of s00_couplers_imp_BMC27U is
  component v7_bd_auto_pc_6 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component v7_bd_auto_pc_6;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RLAST : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WLAST : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_pc_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_pc_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_pc_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_pc_to_s00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_pc_to_s00_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_pc_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_pc_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_pc_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_pc_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_pc_to_s00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_pc_to_s00_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_pc_to_s00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_pc_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= auto_pc_to_s00_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RLAST <= M_AXI_rlast;
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARPROT(1 downto 0) <= S_AXI_arprot(1 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWPROT(1 downto 0) <= S_AXI_awprot(1 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component v7_bd_auto_pc_6
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1(0),
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_s00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_s00_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_pc_to_s00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_pc_to_s00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_s00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_pc_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_pc_to_s00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_s00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_s00_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_pc_to_s00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_pc_to_s00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_pc_to_s00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_pc_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_pc_to_s00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rlast => auto_pc_to_s00_couplers_RLAST,
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wlast => auto_pc_to_s00_couplers_WLAST,
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arprot(2) => '0',
      s_axi_arprot(1 downto 0) => s00_couplers_to_auto_pc_ARPROT(1 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awprot(2) => '0',
      s_axi_awprot(1 downto 0) => s00_couplers_to_auto_pc_AWPROT(1 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity v7_bd_axi_interconnect_0_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M01_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M01_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M01_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M01_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC;
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    M03_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    M03_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC;
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M04_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M04_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC;
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC;
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    M05_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_arready : in STD_LOGIC;
    M05_AXI_arvalid : out STD_LOGIC;
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    M05_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_awready : in STD_LOGIC;
    M05_AXI_awvalid : out STD_LOGIC;
    M05_AXI_bready : out STD_LOGIC;
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC;
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rready : out STD_LOGIC;
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC;
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wready : in STD_LOGIC;
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC;
    M06_ACLK : in STD_LOGIC;
    M06_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_araddr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    M06_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXI_arready : in STD_LOGIC;
    M06_AXI_arvalid : out STD_LOGIC;
    M06_AXI_awaddr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    M06_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXI_awready : in STD_LOGIC;
    M06_AXI_awvalid : out STD_LOGIC;
    M06_AXI_bready : out STD_LOGIC;
    M06_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_bvalid : in STD_LOGIC;
    M06_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_rready : out STD_LOGIC;
    M06_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_rvalid : in STD_LOGIC;
    M06_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_wready : in STD_LOGIC;
    M06_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_wvalid : out STD_LOGIC;
    M07_ACLK : in STD_LOGIC;
    M07_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_araddr : out STD_LOGIC;
    M07_AXI_arburst : out STD_LOGIC;
    M07_AXI_arcache : out STD_LOGIC;
    M07_AXI_arlen : out STD_LOGIC;
    M07_AXI_arlock : out STD_LOGIC;
    M07_AXI_arprot : out STD_LOGIC;
    M07_AXI_arqos : out STD_LOGIC;
    M07_AXI_arready : in STD_LOGIC;
    M07_AXI_arregion : out STD_LOGIC;
    M07_AXI_arsize : out STD_LOGIC;
    M07_AXI_arvalid : out STD_LOGIC;
    M07_AXI_awaddr : out STD_LOGIC;
    M07_AXI_awburst : out STD_LOGIC;
    M07_AXI_awcache : out STD_LOGIC;
    M07_AXI_awlen : out STD_LOGIC;
    M07_AXI_awlock : out STD_LOGIC;
    M07_AXI_awprot : out STD_LOGIC;
    M07_AXI_awqos : out STD_LOGIC;
    M07_AXI_awready : in STD_LOGIC;
    M07_AXI_awregion : out STD_LOGIC;
    M07_AXI_awsize : out STD_LOGIC;
    M07_AXI_awvalid : out STD_LOGIC;
    M07_AXI_bready : out STD_LOGIC;
    M07_AXI_bresp : in STD_LOGIC;
    M07_AXI_bvalid : in STD_LOGIC;
    M07_AXI_rdata : in STD_LOGIC;
    M07_AXI_rlast : in STD_LOGIC;
    M07_AXI_rready : out STD_LOGIC;
    M07_AXI_rresp : in STD_LOGIC;
    M07_AXI_rvalid : in STD_LOGIC;
    M07_AXI_wdata : out STD_LOGIC;
    M07_AXI_wlast : out STD_LOGIC;
    M07_AXI_wready : in STD_LOGIC;
    M07_AXI_wstrb : out STD_LOGIC;
    M07_AXI_wvalid : out STD_LOGIC;
    M08_ACLK : in STD_LOGIC;
    M08_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_araddr : out STD_LOGIC;
    M08_AXI_arburst : out STD_LOGIC;
    M08_AXI_arcache : out STD_LOGIC;
    M08_AXI_arlen : out STD_LOGIC;
    M08_AXI_arlock : out STD_LOGIC;
    M08_AXI_arprot : out STD_LOGIC;
    M08_AXI_arqos : out STD_LOGIC;
    M08_AXI_arready : in STD_LOGIC;
    M08_AXI_arregion : out STD_LOGIC;
    M08_AXI_arsize : out STD_LOGIC;
    M08_AXI_arvalid : out STD_LOGIC;
    M08_AXI_awaddr : out STD_LOGIC;
    M08_AXI_awburst : out STD_LOGIC;
    M08_AXI_awcache : out STD_LOGIC;
    M08_AXI_awlen : out STD_LOGIC;
    M08_AXI_awlock : out STD_LOGIC;
    M08_AXI_awprot : out STD_LOGIC;
    M08_AXI_awqos : out STD_LOGIC;
    M08_AXI_awready : in STD_LOGIC;
    M08_AXI_awregion : out STD_LOGIC;
    M08_AXI_awsize : out STD_LOGIC;
    M08_AXI_awvalid : out STD_LOGIC;
    M08_AXI_bready : out STD_LOGIC;
    M08_AXI_bresp : in STD_LOGIC;
    M08_AXI_bvalid : in STD_LOGIC;
    M08_AXI_rdata : in STD_LOGIC;
    M08_AXI_rlast : in STD_LOGIC;
    M08_AXI_rready : out STD_LOGIC;
    M08_AXI_rresp : in STD_LOGIC;
    M08_AXI_rvalid : in STD_LOGIC;
    M08_AXI_wdata : out STD_LOGIC;
    M08_AXI_wlast : out STD_LOGIC;
    M08_AXI_wready : in STD_LOGIC;
    M08_AXI_wstrb : out STD_LOGIC;
    M08_AXI_wvalid : out STD_LOGIC;
    M09_ACLK : in STD_LOGIC;
    M09_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_araddr : out STD_LOGIC;
    M09_AXI_arburst : out STD_LOGIC;
    M09_AXI_arcache : out STD_LOGIC;
    M09_AXI_arlen : out STD_LOGIC;
    M09_AXI_arlock : out STD_LOGIC;
    M09_AXI_arprot : out STD_LOGIC;
    M09_AXI_arqos : out STD_LOGIC;
    M09_AXI_arready : in STD_LOGIC;
    M09_AXI_arregion : out STD_LOGIC;
    M09_AXI_arsize : out STD_LOGIC;
    M09_AXI_arvalid : out STD_LOGIC;
    M09_AXI_awaddr : out STD_LOGIC;
    M09_AXI_awburst : out STD_LOGIC;
    M09_AXI_awcache : out STD_LOGIC;
    M09_AXI_awlen : out STD_LOGIC;
    M09_AXI_awlock : out STD_LOGIC;
    M09_AXI_awprot : out STD_LOGIC;
    M09_AXI_awqos : out STD_LOGIC;
    M09_AXI_awready : in STD_LOGIC;
    M09_AXI_awregion : out STD_LOGIC;
    M09_AXI_awsize : out STD_LOGIC;
    M09_AXI_awvalid : out STD_LOGIC;
    M09_AXI_bready : out STD_LOGIC;
    M09_AXI_bresp : in STD_LOGIC;
    M09_AXI_bvalid : in STD_LOGIC;
    M09_AXI_rdata : in STD_LOGIC;
    M09_AXI_rlast : in STD_LOGIC;
    M09_AXI_rready : out STD_LOGIC;
    M09_AXI_rresp : in STD_LOGIC;
    M09_AXI_rvalid : in STD_LOGIC;
    M09_AXI_wdata : out STD_LOGIC;
    M09_AXI_wlast : out STD_LOGIC;
    M09_AXI_wready : in STD_LOGIC;
    M09_AXI_wstrb : out STD_LOGIC;
    M09_AXI_wvalid : out STD_LOGIC;
    M10_ACLK : in STD_LOGIC;
    M10_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_araddr : out STD_LOGIC;
    M10_AXI_arburst : out STD_LOGIC;
    M10_AXI_arcache : out STD_LOGIC;
    M10_AXI_arlen : out STD_LOGIC;
    M10_AXI_arlock : out STD_LOGIC;
    M10_AXI_arprot : out STD_LOGIC;
    M10_AXI_arqos : out STD_LOGIC;
    M10_AXI_arready : in STD_LOGIC;
    M10_AXI_arregion : out STD_LOGIC;
    M10_AXI_arsize : out STD_LOGIC;
    M10_AXI_arvalid : out STD_LOGIC;
    M10_AXI_awaddr : out STD_LOGIC;
    M10_AXI_awburst : out STD_LOGIC;
    M10_AXI_awcache : out STD_LOGIC;
    M10_AXI_awlen : out STD_LOGIC;
    M10_AXI_awlock : out STD_LOGIC;
    M10_AXI_awprot : out STD_LOGIC;
    M10_AXI_awqos : out STD_LOGIC;
    M10_AXI_awready : in STD_LOGIC;
    M10_AXI_awregion : out STD_LOGIC;
    M10_AXI_awsize : out STD_LOGIC;
    M10_AXI_awvalid : out STD_LOGIC;
    M10_AXI_bready : out STD_LOGIC;
    M10_AXI_bresp : in STD_LOGIC;
    M10_AXI_bvalid : in STD_LOGIC;
    M10_AXI_rdata : in STD_LOGIC;
    M10_AXI_rlast : in STD_LOGIC;
    M10_AXI_rready : out STD_LOGIC;
    M10_AXI_rresp : in STD_LOGIC;
    M10_AXI_rvalid : in STD_LOGIC;
    M10_AXI_wdata : out STD_LOGIC;
    M10_AXI_wlast : out STD_LOGIC;
    M10_AXI_wready : in STD_LOGIC;
    M10_AXI_wstrb : out STD_LOGIC;
    M10_AXI_wvalid : out STD_LOGIC;
    M11_ACLK : in STD_LOGIC;
    M11_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_araddr : out STD_LOGIC;
    M11_AXI_arburst : out STD_LOGIC;
    M11_AXI_arcache : out STD_LOGIC;
    M11_AXI_arlen : out STD_LOGIC;
    M11_AXI_arlock : out STD_LOGIC;
    M11_AXI_arprot : out STD_LOGIC;
    M11_AXI_arqos : out STD_LOGIC;
    M11_AXI_arready : in STD_LOGIC;
    M11_AXI_arregion : out STD_LOGIC;
    M11_AXI_arsize : out STD_LOGIC;
    M11_AXI_arvalid : out STD_LOGIC;
    M11_AXI_awaddr : out STD_LOGIC;
    M11_AXI_awburst : out STD_LOGIC;
    M11_AXI_awcache : out STD_LOGIC;
    M11_AXI_awlen : out STD_LOGIC;
    M11_AXI_awlock : out STD_LOGIC;
    M11_AXI_awprot : out STD_LOGIC;
    M11_AXI_awqos : out STD_LOGIC;
    M11_AXI_awready : in STD_LOGIC;
    M11_AXI_awregion : out STD_LOGIC;
    M11_AXI_awsize : out STD_LOGIC;
    M11_AXI_awvalid : out STD_LOGIC;
    M11_AXI_bready : out STD_LOGIC;
    M11_AXI_bresp : in STD_LOGIC;
    M11_AXI_bvalid : in STD_LOGIC;
    M11_AXI_rdata : in STD_LOGIC;
    M11_AXI_rlast : in STD_LOGIC;
    M11_AXI_rready : out STD_LOGIC;
    M11_AXI_rresp : in STD_LOGIC;
    M11_AXI_rvalid : in STD_LOGIC;
    M11_AXI_wdata : out STD_LOGIC;
    M11_AXI_wlast : out STD_LOGIC;
    M11_AXI_wready : in STD_LOGIC;
    M11_AXI_wstrb : out STD_LOGIC;
    M11_AXI_wvalid : out STD_LOGIC;
    M12_ACLK : in STD_LOGIC;
    M12_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M12_AXI_araddr : out STD_LOGIC;
    M12_AXI_arburst : out STD_LOGIC;
    M12_AXI_arcache : out STD_LOGIC;
    M12_AXI_arlen : out STD_LOGIC;
    M12_AXI_arlock : out STD_LOGIC;
    M12_AXI_arprot : out STD_LOGIC;
    M12_AXI_arqos : out STD_LOGIC;
    M12_AXI_arready : in STD_LOGIC;
    M12_AXI_arregion : out STD_LOGIC;
    M12_AXI_arsize : out STD_LOGIC;
    M12_AXI_arvalid : out STD_LOGIC;
    M12_AXI_awaddr : out STD_LOGIC;
    M12_AXI_awburst : out STD_LOGIC;
    M12_AXI_awcache : out STD_LOGIC;
    M12_AXI_awlen : out STD_LOGIC;
    M12_AXI_awlock : out STD_LOGIC;
    M12_AXI_awprot : out STD_LOGIC;
    M12_AXI_awqos : out STD_LOGIC;
    M12_AXI_awready : in STD_LOGIC;
    M12_AXI_awregion : out STD_LOGIC;
    M12_AXI_awsize : out STD_LOGIC;
    M12_AXI_awvalid : out STD_LOGIC;
    M12_AXI_bready : out STD_LOGIC;
    M12_AXI_bresp : in STD_LOGIC;
    M12_AXI_bvalid : in STD_LOGIC;
    M12_AXI_rdata : in STD_LOGIC;
    M12_AXI_rlast : in STD_LOGIC;
    M12_AXI_rready : out STD_LOGIC;
    M12_AXI_rresp : in STD_LOGIC;
    M12_AXI_rvalid : in STD_LOGIC;
    M12_AXI_wdata : out STD_LOGIC;
    M12_AXI_wlast : out STD_LOGIC;
    M12_AXI_wready : in STD_LOGIC;
    M12_AXI_wstrb : out STD_LOGIC;
    M12_AXI_wvalid : out STD_LOGIC;
    M13_ACLK : in STD_LOGIC;
    M13_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M13_AXI_araddr : out STD_LOGIC;
    M13_AXI_arburst : out STD_LOGIC;
    M13_AXI_arcache : out STD_LOGIC;
    M13_AXI_arlen : out STD_LOGIC;
    M13_AXI_arlock : out STD_LOGIC;
    M13_AXI_arprot : out STD_LOGIC;
    M13_AXI_arqos : out STD_LOGIC;
    M13_AXI_arready : in STD_LOGIC;
    M13_AXI_arregion : out STD_LOGIC;
    M13_AXI_arsize : out STD_LOGIC;
    M13_AXI_arvalid : out STD_LOGIC;
    M13_AXI_awaddr : out STD_LOGIC;
    M13_AXI_awburst : out STD_LOGIC;
    M13_AXI_awcache : out STD_LOGIC;
    M13_AXI_awlen : out STD_LOGIC;
    M13_AXI_awlock : out STD_LOGIC;
    M13_AXI_awprot : out STD_LOGIC;
    M13_AXI_awqos : out STD_LOGIC;
    M13_AXI_awready : in STD_LOGIC;
    M13_AXI_awregion : out STD_LOGIC;
    M13_AXI_awsize : out STD_LOGIC;
    M13_AXI_awvalid : out STD_LOGIC;
    M13_AXI_bready : out STD_LOGIC;
    M13_AXI_bresp : in STD_LOGIC;
    M13_AXI_bvalid : in STD_LOGIC;
    M13_AXI_rdata : in STD_LOGIC;
    M13_AXI_rlast : in STD_LOGIC;
    M13_AXI_rready : out STD_LOGIC;
    M13_AXI_rresp : in STD_LOGIC;
    M13_AXI_rvalid : in STD_LOGIC;
    M13_AXI_wdata : out STD_LOGIC;
    M13_AXI_wlast : out STD_LOGIC;
    M13_AXI_wready : in STD_LOGIC;
    M13_AXI_wstrb : out STD_LOGIC;
    M13_AXI_wvalid : out STD_LOGIC;
    M14_ACLK : in STD_LOGIC;
    M14_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M14_AXI_araddr : out STD_LOGIC;
    M14_AXI_arburst : out STD_LOGIC;
    M14_AXI_arcache : out STD_LOGIC;
    M14_AXI_arlen : out STD_LOGIC;
    M14_AXI_arlock : out STD_LOGIC;
    M14_AXI_arprot : out STD_LOGIC;
    M14_AXI_arqos : out STD_LOGIC;
    M14_AXI_arready : in STD_LOGIC;
    M14_AXI_arregion : out STD_LOGIC;
    M14_AXI_arsize : out STD_LOGIC;
    M14_AXI_arvalid : out STD_LOGIC;
    M14_AXI_awaddr : out STD_LOGIC;
    M14_AXI_awburst : out STD_LOGIC;
    M14_AXI_awcache : out STD_LOGIC;
    M14_AXI_awlen : out STD_LOGIC;
    M14_AXI_awlock : out STD_LOGIC;
    M14_AXI_awprot : out STD_LOGIC;
    M14_AXI_awqos : out STD_LOGIC;
    M14_AXI_awready : in STD_LOGIC;
    M14_AXI_awregion : out STD_LOGIC;
    M14_AXI_awsize : out STD_LOGIC;
    M14_AXI_awvalid : out STD_LOGIC;
    M14_AXI_bready : out STD_LOGIC;
    M14_AXI_bresp : in STD_LOGIC;
    M14_AXI_bvalid : in STD_LOGIC;
    M14_AXI_rdata : in STD_LOGIC;
    M14_AXI_rlast : in STD_LOGIC;
    M14_AXI_rready : out STD_LOGIC;
    M14_AXI_rresp : in STD_LOGIC;
    M14_AXI_rvalid : in STD_LOGIC;
    M14_AXI_wdata : out STD_LOGIC;
    M14_AXI_wlast : out STD_LOGIC;
    M14_AXI_wready : in STD_LOGIC;
    M14_AXI_wstrb : out STD_LOGIC;
    M14_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end v7_bd_axi_interconnect_0_0;

architecture STRUCTURE of v7_bd_axi_interconnect_0_0 is
  component v7_bd_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 479 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 119 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 44 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 29 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 59 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 44 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 59 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 59 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 479 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 59 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 29 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 479 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 119 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 44 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 29 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 59 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 44 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 59 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 59 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 479 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 29 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  end component v7_bd_xbar_0;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M02_ACLK_1 : STD_LOGIC;
  signal M02_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M03_ACLK_1 : STD_LOGIC;
  signal M03_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M04_ACLK_1 : STD_LOGIC;
  signal M04_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M05_ACLK_1 : STD_LOGIC;
  signal M05_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M06_ACLK_1 : STD_LOGIC;
  signal M06_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M07_ACLK_1 : STD_LOGIC;
  signal M07_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M08_ACLK_1 : STD_LOGIC;
  signal M08_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M09_ACLK_1 : STD_LOGIC;
  signal M09_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M10_ACLK_1 : STD_LOGIC;
  signal M10_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M11_ACLK_1 : STD_LOGIC;
  signal M11_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M12_ACLK_1 : STD_LOGIC;
  signal M12_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M13_ACLK_1 : STD_LOGIC;
  signal M13_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M14_ACLK_1 : STD_LOGIC;
  signal M14_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_ACLK_net : STD_LOGIC;
  signal axi_interconnect_0_ARESETN_net : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_BREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_BVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_RREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_RVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_WREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal m05_couplers_to_axi_interconnect_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal m05_couplers_to_axi_interconnect_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal m06_couplers_to_axi_interconnect_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal m06_couplers_to_axi_interconnect_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m06_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_ARBURST : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_ARCACHE : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_ARLEN : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_ARLOCK : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_ARPROT : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_ARQOS : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_ARREGION : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_ARSIZE : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_AWBURST : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_AWCACHE : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_AWLEN : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_AWLOCK : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_AWPROT : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_AWQOS : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_AWREGION : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_AWSIZE : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_RLAST : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_WLAST : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC;
  signal m07_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_ARBURST : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_ARCACHE : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_ARLEN : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_ARLOCK : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_ARPROT : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_ARQOS : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_ARREGION : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_ARSIZE : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_AWBURST : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_AWCACHE : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_AWLEN : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_AWLOCK : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_AWPROT : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_AWQOS : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_AWREGION : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_AWSIZE : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_RLAST : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_WLAST : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC;
  signal m08_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_ARBURST : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_ARCACHE : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_ARLEN : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_ARLOCK : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_ARPROT : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_ARQOS : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_ARREGION : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_ARSIZE : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_AWBURST : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_AWCACHE : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_AWLEN : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_AWLOCK : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_AWPROT : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_AWQOS : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_AWREGION : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_AWSIZE : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_RLAST : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_WLAST : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC;
  signal m09_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_ARBURST : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_ARCACHE : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_ARLEN : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_ARLOCK : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_ARPROT : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_ARQOS : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_ARREGION : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_ARSIZE : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_AWBURST : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_AWCACHE : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_AWLEN : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_AWLOCK : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_AWPROT : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_AWQOS : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_AWREGION : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_AWSIZE : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_RLAST : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_WLAST : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC;
  signal m10_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_ARBURST : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_ARCACHE : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_ARLEN : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_ARLOCK : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_ARPROT : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_ARQOS : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_ARREGION : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_ARSIZE : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_AWBURST : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_AWCACHE : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_AWLEN : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_AWLOCK : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_AWPROT : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_AWQOS : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_AWREGION : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_AWSIZE : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_RLAST : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_WLAST : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC;
  signal m11_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_ARBURST : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_ARCACHE : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_ARLEN : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_ARLOCK : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_ARPROT : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_ARQOS : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_ARREGION : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_ARSIZE : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_AWBURST : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_AWCACHE : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_AWLEN : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_AWLOCK : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_AWPROT : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_AWQOS : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_AWREGION : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_AWSIZE : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_RLAST : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_WLAST : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC;
  signal m12_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_ARBURST : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_ARCACHE : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_ARLEN : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_ARLOCK : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_ARPROT : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_ARQOS : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_ARREGION : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_ARSIZE : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_AWBURST : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_AWCACHE : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_AWLEN : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_AWLOCK : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_AWPROT : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_AWQOS : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_AWREGION : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_AWSIZE : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_RLAST : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_WLAST : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC;
  signal m13_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_ARBURST : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_ARCACHE : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_ARLEN : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_ARLOCK : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_ARPROT : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_ARQOS : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_ARREGION : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_ARSIZE : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_AWBURST : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_AWCACHE : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_AWLEN : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_AWLOCK : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_AWPROT : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_AWQOS : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_AWREGION : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_AWSIZE : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_RLAST : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_WLAST : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC;
  signal m14_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARBURST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARLEN : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWBURST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWLEN : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARBURST : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal xbar_to_m02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_ARLEN : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal xbar_to_m02_couplers_ARLOCK : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARQOS : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_ARREGION : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWBURST : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal xbar_to_m02_couplers_AWCACHE : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_AWLEN : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal xbar_to_m02_couplers_AWLOCK : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWQOS : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_AWREGION : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_AWSIZE : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WLAST : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_ARBURST : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal xbar_to_m03_couplers_ARCACHE : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_ARLEN : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal xbar_to_m03_couplers_ARLOCK : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARQOS : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_ARREGION : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_ARSIZE : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_AWBURST : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal xbar_to_m03_couplers_AWCACHE : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_AWLEN : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal xbar_to_m03_couplers_AWLOCK : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWQOS : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_AWREGION : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_AWSIZE : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m03_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_WLAST : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_ARBURST : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal xbar_to_m04_couplers_ARCACHE : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_ARLEN : STD_LOGIC_VECTOR ( 39 downto 32 );
  signal xbar_to_m04_couplers_ARLOCK : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_ARPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_ARQOS : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_ARREGION : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_ARSIZE : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_AWBURST : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal xbar_to_m04_couplers_AWCACHE : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_AWLEN : STD_LOGIC_VECTOR ( 39 downto 32 );
  signal xbar_to_m04_couplers_AWLOCK : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_AWQOS : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_AWREGION : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_AWSIZE : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m04_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_WLAST : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_ARBURST : STD_LOGIC_VECTOR ( 11 downto 10 );
  signal xbar_to_m05_couplers_ARCACHE : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_ARLEN : STD_LOGIC_VECTOR ( 47 downto 40 );
  signal xbar_to_m05_couplers_ARLOCK : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_ARPROT : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_ARQOS : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_ARREGION : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_ARSIZE : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_AWBURST : STD_LOGIC_VECTOR ( 11 downto 10 );
  signal xbar_to_m05_couplers_AWCACHE : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_AWLEN : STD_LOGIC_VECTOR ( 47 downto 40 );
  signal xbar_to_m05_couplers_AWLOCK : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWPROT : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_AWQOS : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_AWREGION : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_AWSIZE : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m05_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_WLAST : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_ARBURST : STD_LOGIC_VECTOR ( 13 downto 12 );
  signal xbar_to_m06_couplers_ARCACHE : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_ARLEN : STD_LOGIC_VECTOR ( 55 downto 48 );
  signal xbar_to_m06_couplers_ARLOCK : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_ARPROT : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_ARQOS : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_ARREGION : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_ARSIZE : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_ARVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_AWBURST : STD_LOGIC_VECTOR ( 13 downto 12 );
  signal xbar_to_m06_couplers_AWCACHE : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_AWLEN : STD_LOGIC_VECTOR ( 55 downto 48 );
  signal xbar_to_m06_couplers_AWLOCK : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_AWPROT : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_AWQOS : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_AWREGION : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_AWSIZE : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_AWVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m06_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m06_couplers_RREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_WLAST : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_WVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m07_couplers_ARADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_ARBURST : STD_LOGIC_VECTOR ( 15 downto 14 );
  signal xbar_to_m07_couplers_ARCACHE : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_ARLEN : STD_LOGIC_VECTOR ( 63 downto 56 );
  signal xbar_to_m07_couplers_ARLOCK : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_ARPROT : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_ARQOS : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_ARREGION : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_ARSIZE : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_ARVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_AWADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_AWBURST : STD_LOGIC_VECTOR ( 15 downto 14 );
  signal xbar_to_m07_couplers_AWCACHE : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_AWLEN : STD_LOGIC_VECTOR ( 63 downto 56 );
  signal xbar_to_m07_couplers_AWLOCK : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_AWPROT : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_AWQOS : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_AWREGION : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_AWSIZE : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_AWVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_BREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_BRESP : STD_LOGIC;
  signal xbar_to_m07_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m07_couplers_RDATA : STD_LOGIC;
  signal xbar_to_m07_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m07_couplers_RREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_RRESP : STD_LOGIC;
  signal xbar_to_m07_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m07_couplers_WDATA : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_WLAST : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_WSTRB : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_WVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m08_couplers_ARADDR : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_ARBURST : STD_LOGIC_VECTOR ( 17 downto 16 );
  signal xbar_to_m08_couplers_ARCACHE : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_ARLEN : STD_LOGIC_VECTOR ( 71 downto 64 );
  signal xbar_to_m08_couplers_ARLOCK : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_ARPROT : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_ARQOS : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_ARREGION : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_ARSIZE : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_ARVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_AWADDR : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_AWBURST : STD_LOGIC_VECTOR ( 17 downto 16 );
  signal xbar_to_m08_couplers_AWCACHE : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_AWLEN : STD_LOGIC_VECTOR ( 71 downto 64 );
  signal xbar_to_m08_couplers_AWLOCK : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_AWPROT : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_AWQOS : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_AWREGION : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_AWSIZE : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_AWVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_BREADY : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_BRESP : STD_LOGIC;
  signal xbar_to_m08_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m08_couplers_RDATA : STD_LOGIC;
  signal xbar_to_m08_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m08_couplers_RREADY : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_RRESP : STD_LOGIC;
  signal xbar_to_m08_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m08_couplers_WDATA : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_WLAST : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_WSTRB : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_WVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m09_couplers_ARADDR : STD_LOGIC_VECTOR ( 319 downto 288 );
  signal xbar_to_m09_couplers_ARBURST : STD_LOGIC_VECTOR ( 19 downto 18 );
  signal xbar_to_m09_couplers_ARCACHE : STD_LOGIC_VECTOR ( 39 downto 36 );
  signal xbar_to_m09_couplers_ARLEN : STD_LOGIC_VECTOR ( 79 downto 72 );
  signal xbar_to_m09_couplers_ARLOCK : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_ARPROT : STD_LOGIC_VECTOR ( 29 downto 27 );
  signal xbar_to_m09_couplers_ARQOS : STD_LOGIC_VECTOR ( 39 downto 36 );
  signal xbar_to_m09_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m09_couplers_ARREGION : STD_LOGIC_VECTOR ( 39 downto 36 );
  signal xbar_to_m09_couplers_ARSIZE : STD_LOGIC_VECTOR ( 29 downto 27 );
  signal xbar_to_m09_couplers_ARVALID : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_AWADDR : STD_LOGIC_VECTOR ( 319 downto 288 );
  signal xbar_to_m09_couplers_AWBURST : STD_LOGIC_VECTOR ( 19 downto 18 );
  signal xbar_to_m09_couplers_AWCACHE : STD_LOGIC_VECTOR ( 39 downto 36 );
  signal xbar_to_m09_couplers_AWLEN : STD_LOGIC_VECTOR ( 79 downto 72 );
  signal xbar_to_m09_couplers_AWLOCK : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_AWPROT : STD_LOGIC_VECTOR ( 29 downto 27 );
  signal xbar_to_m09_couplers_AWQOS : STD_LOGIC_VECTOR ( 39 downto 36 );
  signal xbar_to_m09_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m09_couplers_AWREGION : STD_LOGIC_VECTOR ( 39 downto 36 );
  signal xbar_to_m09_couplers_AWSIZE : STD_LOGIC_VECTOR ( 29 downto 27 );
  signal xbar_to_m09_couplers_AWVALID : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_BREADY : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_BRESP : STD_LOGIC;
  signal xbar_to_m09_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m09_couplers_RDATA : STD_LOGIC;
  signal xbar_to_m09_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m09_couplers_RREADY : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_RRESP : STD_LOGIC;
  signal xbar_to_m09_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m09_couplers_WDATA : STD_LOGIC_VECTOR ( 319 downto 288 );
  signal xbar_to_m09_couplers_WLAST : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m09_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m09_couplers_WSTRB : STD_LOGIC_VECTOR ( 39 downto 36 );
  signal xbar_to_m09_couplers_WVALID : STD_LOGIC_VECTOR ( 9 to 9 );
  signal xbar_to_m10_couplers_ARADDR : STD_LOGIC_VECTOR ( 351 downto 320 );
  signal xbar_to_m10_couplers_ARBURST : STD_LOGIC_VECTOR ( 21 downto 20 );
  signal xbar_to_m10_couplers_ARCACHE : STD_LOGIC_VECTOR ( 43 downto 40 );
  signal xbar_to_m10_couplers_ARLEN : STD_LOGIC_VECTOR ( 87 downto 80 );
  signal xbar_to_m10_couplers_ARLOCK : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_ARPROT : STD_LOGIC_VECTOR ( 32 downto 30 );
  signal xbar_to_m10_couplers_ARQOS : STD_LOGIC_VECTOR ( 43 downto 40 );
  signal xbar_to_m10_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m10_couplers_ARREGION : STD_LOGIC_VECTOR ( 43 downto 40 );
  signal xbar_to_m10_couplers_ARSIZE : STD_LOGIC_VECTOR ( 32 downto 30 );
  signal xbar_to_m10_couplers_ARVALID : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_AWADDR : STD_LOGIC_VECTOR ( 351 downto 320 );
  signal xbar_to_m10_couplers_AWBURST : STD_LOGIC_VECTOR ( 21 downto 20 );
  signal xbar_to_m10_couplers_AWCACHE : STD_LOGIC_VECTOR ( 43 downto 40 );
  signal xbar_to_m10_couplers_AWLEN : STD_LOGIC_VECTOR ( 87 downto 80 );
  signal xbar_to_m10_couplers_AWLOCK : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_AWPROT : STD_LOGIC_VECTOR ( 32 downto 30 );
  signal xbar_to_m10_couplers_AWQOS : STD_LOGIC_VECTOR ( 43 downto 40 );
  signal xbar_to_m10_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m10_couplers_AWREGION : STD_LOGIC_VECTOR ( 43 downto 40 );
  signal xbar_to_m10_couplers_AWSIZE : STD_LOGIC_VECTOR ( 32 downto 30 );
  signal xbar_to_m10_couplers_AWVALID : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_BREADY : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_BRESP : STD_LOGIC;
  signal xbar_to_m10_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m10_couplers_RDATA : STD_LOGIC;
  signal xbar_to_m10_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m10_couplers_RREADY : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_RRESP : STD_LOGIC;
  signal xbar_to_m10_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m10_couplers_WDATA : STD_LOGIC_VECTOR ( 351 downto 320 );
  signal xbar_to_m10_couplers_WLAST : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m10_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m10_couplers_WSTRB : STD_LOGIC_VECTOR ( 43 downto 40 );
  signal xbar_to_m10_couplers_WVALID : STD_LOGIC_VECTOR ( 10 to 10 );
  signal xbar_to_m11_couplers_ARADDR : STD_LOGIC_VECTOR ( 383 downto 352 );
  signal xbar_to_m11_couplers_ARBURST : STD_LOGIC_VECTOR ( 23 downto 22 );
  signal xbar_to_m11_couplers_ARCACHE : STD_LOGIC_VECTOR ( 47 downto 44 );
  signal xbar_to_m11_couplers_ARLEN : STD_LOGIC_VECTOR ( 95 downto 88 );
  signal xbar_to_m11_couplers_ARLOCK : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m11_couplers_ARPROT : STD_LOGIC_VECTOR ( 35 downto 33 );
  signal xbar_to_m11_couplers_ARQOS : STD_LOGIC_VECTOR ( 47 downto 44 );
  signal xbar_to_m11_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m11_couplers_ARREGION : STD_LOGIC_VECTOR ( 47 downto 44 );
  signal xbar_to_m11_couplers_ARSIZE : STD_LOGIC_VECTOR ( 35 downto 33 );
  signal xbar_to_m11_couplers_ARVALID : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m11_couplers_AWADDR : STD_LOGIC_VECTOR ( 383 downto 352 );
  signal xbar_to_m11_couplers_AWBURST : STD_LOGIC_VECTOR ( 23 downto 22 );
  signal xbar_to_m11_couplers_AWCACHE : STD_LOGIC_VECTOR ( 47 downto 44 );
  signal xbar_to_m11_couplers_AWLEN : STD_LOGIC_VECTOR ( 95 downto 88 );
  signal xbar_to_m11_couplers_AWLOCK : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m11_couplers_AWPROT : STD_LOGIC_VECTOR ( 35 downto 33 );
  signal xbar_to_m11_couplers_AWQOS : STD_LOGIC_VECTOR ( 47 downto 44 );
  signal xbar_to_m11_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m11_couplers_AWREGION : STD_LOGIC_VECTOR ( 47 downto 44 );
  signal xbar_to_m11_couplers_AWSIZE : STD_LOGIC_VECTOR ( 35 downto 33 );
  signal xbar_to_m11_couplers_AWVALID : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m11_couplers_BREADY : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m11_couplers_BRESP : STD_LOGIC;
  signal xbar_to_m11_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m11_couplers_RDATA : STD_LOGIC;
  signal xbar_to_m11_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m11_couplers_RREADY : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m11_couplers_RRESP : STD_LOGIC;
  signal xbar_to_m11_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m11_couplers_WDATA : STD_LOGIC_VECTOR ( 383 downto 352 );
  signal xbar_to_m11_couplers_WLAST : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m11_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m11_couplers_WSTRB : STD_LOGIC_VECTOR ( 47 downto 44 );
  signal xbar_to_m11_couplers_WVALID : STD_LOGIC_VECTOR ( 11 to 11 );
  signal xbar_to_m12_couplers_ARADDR : STD_LOGIC_VECTOR ( 415 downto 384 );
  signal xbar_to_m12_couplers_ARBURST : STD_LOGIC_VECTOR ( 25 downto 24 );
  signal xbar_to_m12_couplers_ARCACHE : STD_LOGIC_VECTOR ( 51 downto 48 );
  signal xbar_to_m12_couplers_ARLEN : STD_LOGIC_VECTOR ( 103 downto 96 );
  signal xbar_to_m12_couplers_ARLOCK : STD_LOGIC_VECTOR ( 12 to 12 );
  signal xbar_to_m12_couplers_ARPROT : STD_LOGIC_VECTOR ( 38 downto 36 );
  signal xbar_to_m12_couplers_ARQOS : STD_LOGIC_VECTOR ( 51 downto 48 );
  signal xbar_to_m12_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m12_couplers_ARREGION : STD_LOGIC_VECTOR ( 51 downto 48 );
  signal xbar_to_m12_couplers_ARSIZE : STD_LOGIC_VECTOR ( 38 downto 36 );
  signal xbar_to_m12_couplers_ARVALID : STD_LOGIC_VECTOR ( 12 to 12 );
  signal xbar_to_m12_couplers_AWADDR : STD_LOGIC_VECTOR ( 415 downto 384 );
  signal xbar_to_m12_couplers_AWBURST : STD_LOGIC_VECTOR ( 25 downto 24 );
  signal xbar_to_m12_couplers_AWCACHE : STD_LOGIC_VECTOR ( 51 downto 48 );
  signal xbar_to_m12_couplers_AWLEN : STD_LOGIC_VECTOR ( 103 downto 96 );
  signal xbar_to_m12_couplers_AWLOCK : STD_LOGIC_VECTOR ( 12 to 12 );
  signal xbar_to_m12_couplers_AWPROT : STD_LOGIC_VECTOR ( 38 downto 36 );
  signal xbar_to_m12_couplers_AWQOS : STD_LOGIC_VECTOR ( 51 downto 48 );
  signal xbar_to_m12_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m12_couplers_AWREGION : STD_LOGIC_VECTOR ( 51 downto 48 );
  signal xbar_to_m12_couplers_AWSIZE : STD_LOGIC_VECTOR ( 38 downto 36 );
  signal xbar_to_m12_couplers_AWVALID : STD_LOGIC_VECTOR ( 12 to 12 );
  signal xbar_to_m12_couplers_BREADY : STD_LOGIC_VECTOR ( 12 to 12 );
  signal xbar_to_m12_couplers_BRESP : STD_LOGIC;
  signal xbar_to_m12_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m12_couplers_RDATA : STD_LOGIC;
  signal xbar_to_m12_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m12_couplers_RREADY : STD_LOGIC_VECTOR ( 12 to 12 );
  signal xbar_to_m12_couplers_RRESP : STD_LOGIC;
  signal xbar_to_m12_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m12_couplers_WDATA : STD_LOGIC_VECTOR ( 415 downto 384 );
  signal xbar_to_m12_couplers_WLAST : STD_LOGIC_VECTOR ( 12 to 12 );
  signal xbar_to_m12_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m12_couplers_WSTRB : STD_LOGIC_VECTOR ( 51 downto 48 );
  signal xbar_to_m12_couplers_WVALID : STD_LOGIC_VECTOR ( 12 to 12 );
  signal xbar_to_m13_couplers_ARADDR : STD_LOGIC_VECTOR ( 447 downto 416 );
  signal xbar_to_m13_couplers_ARBURST : STD_LOGIC_VECTOR ( 27 downto 26 );
  signal xbar_to_m13_couplers_ARCACHE : STD_LOGIC_VECTOR ( 55 downto 52 );
  signal xbar_to_m13_couplers_ARLEN : STD_LOGIC_VECTOR ( 111 downto 104 );
  signal xbar_to_m13_couplers_ARLOCK : STD_LOGIC_VECTOR ( 13 to 13 );
  signal xbar_to_m13_couplers_ARPROT : STD_LOGIC_VECTOR ( 41 downto 39 );
  signal xbar_to_m13_couplers_ARQOS : STD_LOGIC_VECTOR ( 55 downto 52 );
  signal xbar_to_m13_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m13_couplers_ARREGION : STD_LOGIC_VECTOR ( 55 downto 52 );
  signal xbar_to_m13_couplers_ARSIZE : STD_LOGIC_VECTOR ( 41 downto 39 );
  signal xbar_to_m13_couplers_ARVALID : STD_LOGIC_VECTOR ( 13 to 13 );
  signal xbar_to_m13_couplers_AWADDR : STD_LOGIC_VECTOR ( 447 downto 416 );
  signal xbar_to_m13_couplers_AWBURST : STD_LOGIC_VECTOR ( 27 downto 26 );
  signal xbar_to_m13_couplers_AWCACHE : STD_LOGIC_VECTOR ( 55 downto 52 );
  signal xbar_to_m13_couplers_AWLEN : STD_LOGIC_VECTOR ( 111 downto 104 );
  signal xbar_to_m13_couplers_AWLOCK : STD_LOGIC_VECTOR ( 13 to 13 );
  signal xbar_to_m13_couplers_AWPROT : STD_LOGIC_VECTOR ( 41 downto 39 );
  signal xbar_to_m13_couplers_AWQOS : STD_LOGIC_VECTOR ( 55 downto 52 );
  signal xbar_to_m13_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m13_couplers_AWREGION : STD_LOGIC_VECTOR ( 55 downto 52 );
  signal xbar_to_m13_couplers_AWSIZE : STD_LOGIC_VECTOR ( 41 downto 39 );
  signal xbar_to_m13_couplers_AWVALID : STD_LOGIC_VECTOR ( 13 to 13 );
  signal xbar_to_m13_couplers_BREADY : STD_LOGIC_VECTOR ( 13 to 13 );
  signal xbar_to_m13_couplers_BRESP : STD_LOGIC;
  signal xbar_to_m13_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m13_couplers_RDATA : STD_LOGIC;
  signal xbar_to_m13_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m13_couplers_RREADY : STD_LOGIC_VECTOR ( 13 to 13 );
  signal xbar_to_m13_couplers_RRESP : STD_LOGIC;
  signal xbar_to_m13_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m13_couplers_WDATA : STD_LOGIC_VECTOR ( 447 downto 416 );
  signal xbar_to_m13_couplers_WLAST : STD_LOGIC_VECTOR ( 13 to 13 );
  signal xbar_to_m13_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m13_couplers_WSTRB : STD_LOGIC_VECTOR ( 55 downto 52 );
  signal xbar_to_m13_couplers_WVALID : STD_LOGIC_VECTOR ( 13 to 13 );
  signal xbar_to_m14_couplers_ARADDR : STD_LOGIC_VECTOR ( 479 downto 448 );
  signal xbar_to_m14_couplers_ARBURST : STD_LOGIC_VECTOR ( 29 downto 28 );
  signal xbar_to_m14_couplers_ARCACHE : STD_LOGIC_VECTOR ( 59 downto 56 );
  signal xbar_to_m14_couplers_ARLEN : STD_LOGIC_VECTOR ( 119 downto 112 );
  signal xbar_to_m14_couplers_ARLOCK : STD_LOGIC_VECTOR ( 14 to 14 );
  signal xbar_to_m14_couplers_ARPROT : STD_LOGIC_VECTOR ( 44 downto 42 );
  signal xbar_to_m14_couplers_ARQOS : STD_LOGIC_VECTOR ( 59 downto 56 );
  signal xbar_to_m14_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m14_couplers_ARREGION : STD_LOGIC_VECTOR ( 59 downto 56 );
  signal xbar_to_m14_couplers_ARSIZE : STD_LOGIC_VECTOR ( 44 downto 42 );
  signal xbar_to_m14_couplers_ARVALID : STD_LOGIC_VECTOR ( 14 to 14 );
  signal xbar_to_m14_couplers_AWADDR : STD_LOGIC_VECTOR ( 479 downto 448 );
  signal xbar_to_m14_couplers_AWBURST : STD_LOGIC_VECTOR ( 29 downto 28 );
  signal xbar_to_m14_couplers_AWCACHE : STD_LOGIC_VECTOR ( 59 downto 56 );
  signal xbar_to_m14_couplers_AWLEN : STD_LOGIC_VECTOR ( 119 downto 112 );
  signal xbar_to_m14_couplers_AWLOCK : STD_LOGIC_VECTOR ( 14 to 14 );
  signal xbar_to_m14_couplers_AWPROT : STD_LOGIC_VECTOR ( 44 downto 42 );
  signal xbar_to_m14_couplers_AWQOS : STD_LOGIC_VECTOR ( 59 downto 56 );
  signal xbar_to_m14_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m14_couplers_AWREGION : STD_LOGIC_VECTOR ( 59 downto 56 );
  signal xbar_to_m14_couplers_AWSIZE : STD_LOGIC_VECTOR ( 44 downto 42 );
  signal xbar_to_m14_couplers_AWVALID : STD_LOGIC_VECTOR ( 14 to 14 );
  signal xbar_to_m14_couplers_BREADY : STD_LOGIC_VECTOR ( 14 to 14 );
  signal xbar_to_m14_couplers_BRESP : STD_LOGIC;
  signal xbar_to_m14_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m14_couplers_RDATA : STD_LOGIC;
  signal xbar_to_m14_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m14_couplers_RREADY : STD_LOGIC_VECTOR ( 14 to 14 );
  signal xbar_to_m14_couplers_RRESP : STD_LOGIC;
  signal xbar_to_m14_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m14_couplers_WDATA : STD_LOGIC_VECTOR ( 479 downto 448 );
  signal xbar_to_m14_couplers_WLAST : STD_LOGIC_VECTOR ( 14 to 14 );
  signal xbar_to_m14_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m14_couplers_WSTRB : STD_LOGIC_VECTOR ( 59 downto 56 );
  signal xbar_to_m14_couplers_WVALID : STD_LOGIC_VECTOR ( 14 to 14 );
  signal NLW_xbar_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_xbar_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_xbar_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_xbar_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1(0) <= M00_ARESETN(0);
  M00_AXI_araddr(10 downto 0) <= m00_couplers_to_axi_interconnect_0_ARADDR(10 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_axi_interconnect_0_ARVALID;
  M00_AXI_awaddr(10 downto 0) <= m00_couplers_to_axi_interconnect_0_AWADDR(10 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_axi_interconnect_0_AWVALID;
  M00_AXI_bready <= m00_couplers_to_axi_interconnect_0_BREADY;
  M00_AXI_rready <= m00_couplers_to_axi_interconnect_0_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_axi_interconnect_0_WVALID;
  M01_ACLK_1 <= M01_ACLK;
  M01_ARESETN_1(0) <= M01_ARESETN(0);
  M01_AXI_araddr(15 downto 0) <= m01_couplers_to_axi_interconnect_0_ARADDR(15 downto 0);
  M01_AXI_arburst(1 downto 0) <= m01_couplers_to_axi_interconnect_0_ARBURST(1 downto 0);
  M01_AXI_arcache(3 downto 0) <= m01_couplers_to_axi_interconnect_0_ARCACHE(3 downto 0);
  M01_AXI_arlen(7 downto 0) <= m01_couplers_to_axi_interconnect_0_ARLEN(7 downto 0);
  M01_AXI_arlock(0) <= m01_couplers_to_axi_interconnect_0_ARLOCK(0);
  M01_AXI_arprot(2 downto 0) <= m01_couplers_to_axi_interconnect_0_ARPROT(2 downto 0);
  M01_AXI_arsize(2 downto 0) <= m01_couplers_to_axi_interconnect_0_ARSIZE(2 downto 0);
  M01_AXI_arvalid(0) <= m01_couplers_to_axi_interconnect_0_ARVALID(0);
  M01_AXI_awaddr(15 downto 0) <= m01_couplers_to_axi_interconnect_0_AWADDR(15 downto 0);
  M01_AXI_awburst(1 downto 0) <= m01_couplers_to_axi_interconnect_0_AWBURST(1 downto 0);
  M01_AXI_awcache(3 downto 0) <= m01_couplers_to_axi_interconnect_0_AWCACHE(3 downto 0);
  M01_AXI_awlen(7 downto 0) <= m01_couplers_to_axi_interconnect_0_AWLEN(7 downto 0);
  M01_AXI_awlock(0) <= m01_couplers_to_axi_interconnect_0_AWLOCK(0);
  M01_AXI_awprot(2 downto 0) <= m01_couplers_to_axi_interconnect_0_AWPROT(2 downto 0);
  M01_AXI_awsize(2 downto 0) <= m01_couplers_to_axi_interconnect_0_AWSIZE(2 downto 0);
  M01_AXI_awvalid(0) <= m01_couplers_to_axi_interconnect_0_AWVALID(0);
  M01_AXI_bready(0) <= m01_couplers_to_axi_interconnect_0_BREADY(0);
  M01_AXI_rready(0) <= m01_couplers_to_axi_interconnect_0_RREADY(0);
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M01_AXI_wlast(0) <= m01_couplers_to_axi_interconnect_0_WLAST(0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M01_AXI_wvalid(0) <= m01_couplers_to_axi_interconnect_0_WVALID(0);
  M02_ACLK_1 <= M02_ACLK;
  M02_ARESETN_1(0) <= M02_ARESETN(0);
  M02_AXI_araddr(16 downto 0) <= m02_couplers_to_axi_interconnect_0_ARADDR(16 downto 0);
  M02_AXI_arprot(2 downto 0) <= m02_couplers_to_axi_interconnect_0_ARPROT(2 downto 0);
  M02_AXI_arvalid <= m02_couplers_to_axi_interconnect_0_ARVALID;
  M02_AXI_awaddr(16 downto 0) <= m02_couplers_to_axi_interconnect_0_AWADDR(16 downto 0);
  M02_AXI_awprot(2 downto 0) <= m02_couplers_to_axi_interconnect_0_AWPROT(2 downto 0);
  M02_AXI_awvalid <= m02_couplers_to_axi_interconnect_0_AWVALID;
  M02_AXI_bready <= m02_couplers_to_axi_interconnect_0_BREADY;
  M02_AXI_rready <= m02_couplers_to_axi_interconnect_0_RREADY;
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M02_AXI_wvalid <= m02_couplers_to_axi_interconnect_0_WVALID;
  M03_ACLK_1 <= M03_ACLK;
  M03_ARESETN_1(0) <= M03_ARESETN(0);
  M03_AXI_araddr(16 downto 0) <= m03_couplers_to_axi_interconnect_0_ARADDR(16 downto 0);
  M03_AXI_arprot(2 downto 0) <= m03_couplers_to_axi_interconnect_0_ARPROT(2 downto 0);
  M03_AXI_arvalid <= m03_couplers_to_axi_interconnect_0_ARVALID;
  M03_AXI_awaddr(16 downto 0) <= m03_couplers_to_axi_interconnect_0_AWADDR(16 downto 0);
  M03_AXI_awprot(2 downto 0) <= m03_couplers_to_axi_interconnect_0_AWPROT(2 downto 0);
  M03_AXI_awvalid <= m03_couplers_to_axi_interconnect_0_AWVALID;
  M03_AXI_bready <= m03_couplers_to_axi_interconnect_0_BREADY;
  M03_AXI_rready <= m03_couplers_to_axi_interconnect_0_RREADY;
  M03_AXI_wdata(31 downto 0) <= m03_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M03_AXI_wstrb(3 downto 0) <= m03_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M03_AXI_wvalid <= m03_couplers_to_axi_interconnect_0_WVALID;
  M04_ACLK_1 <= M04_ACLK;
  M04_ARESETN_1(0) <= M04_ARESETN(0);
  M04_AXI_araddr(15 downto 0) <= m04_couplers_to_axi_interconnect_0_ARADDR(15 downto 0);
  M04_AXI_arprot(2 downto 0) <= m04_couplers_to_axi_interconnect_0_ARPROT(2 downto 0);
  M04_AXI_arvalid <= m04_couplers_to_axi_interconnect_0_ARVALID;
  M04_AXI_awaddr(15 downto 0) <= m04_couplers_to_axi_interconnect_0_AWADDR(15 downto 0);
  M04_AXI_awprot(2 downto 0) <= m04_couplers_to_axi_interconnect_0_AWPROT(2 downto 0);
  M04_AXI_awvalid <= m04_couplers_to_axi_interconnect_0_AWVALID;
  M04_AXI_bready <= m04_couplers_to_axi_interconnect_0_BREADY;
  M04_AXI_rready <= m04_couplers_to_axi_interconnect_0_RREADY;
  M04_AXI_wdata(31 downto 0) <= m04_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M04_AXI_wstrb(3 downto 0) <= m04_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M04_AXI_wvalid <= m04_couplers_to_axi_interconnect_0_WVALID;
  M05_ACLK_1 <= M05_ACLK;
  M05_ARESETN_1(0) <= M05_ARESETN(0);
  M05_AXI_araddr(16 downto 0) <= m05_couplers_to_axi_interconnect_0_ARADDR(16 downto 0);
  M05_AXI_arprot(2 downto 0) <= m05_couplers_to_axi_interconnect_0_ARPROT(2 downto 0);
  M05_AXI_arvalid <= m05_couplers_to_axi_interconnect_0_ARVALID;
  M05_AXI_awaddr(16 downto 0) <= m05_couplers_to_axi_interconnect_0_AWADDR(16 downto 0);
  M05_AXI_awprot(2 downto 0) <= m05_couplers_to_axi_interconnect_0_AWPROT(2 downto 0);
  M05_AXI_awvalid <= m05_couplers_to_axi_interconnect_0_AWVALID;
  M05_AXI_bready <= m05_couplers_to_axi_interconnect_0_BREADY;
  M05_AXI_rready <= m05_couplers_to_axi_interconnect_0_RREADY;
  M05_AXI_wdata(31 downto 0) <= m05_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M05_AXI_wstrb(3 downto 0) <= m05_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M05_AXI_wvalid <= m05_couplers_to_axi_interconnect_0_WVALID;
  M06_ACLK_1 <= M06_ACLK;
  M06_ARESETN_1(0) <= M06_ARESETN(0);
  M06_AXI_araddr(16 downto 0) <= m06_couplers_to_axi_interconnect_0_ARADDR(16 downto 0);
  M06_AXI_arprot(2 downto 0) <= m06_couplers_to_axi_interconnect_0_ARPROT(2 downto 0);
  M06_AXI_arvalid <= m06_couplers_to_axi_interconnect_0_ARVALID;
  M06_AXI_awaddr(16 downto 0) <= m06_couplers_to_axi_interconnect_0_AWADDR(16 downto 0);
  M06_AXI_awprot(2 downto 0) <= m06_couplers_to_axi_interconnect_0_AWPROT(2 downto 0);
  M06_AXI_awvalid <= m06_couplers_to_axi_interconnect_0_AWVALID;
  M06_AXI_bready <= m06_couplers_to_axi_interconnect_0_BREADY;
  M06_AXI_rready <= m06_couplers_to_axi_interconnect_0_RREADY;
  M06_AXI_wdata(31 downto 0) <= m06_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M06_AXI_wstrb(3 downto 0) <= m06_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M06_AXI_wvalid <= m06_couplers_to_axi_interconnect_0_WVALID;
  M07_ACLK_1 <= M07_ACLK;
  M07_ARESETN_1(0) <= M07_ARESETN(0);
  M07_AXI_araddr <= m07_couplers_to_axi_interconnect_0_ARADDR;
  M07_AXI_arburst <= m07_couplers_to_axi_interconnect_0_ARBURST;
  M07_AXI_arcache <= m07_couplers_to_axi_interconnect_0_ARCACHE;
  M07_AXI_arlen <= m07_couplers_to_axi_interconnect_0_ARLEN;
  M07_AXI_arlock <= m07_couplers_to_axi_interconnect_0_ARLOCK;
  M07_AXI_arprot <= m07_couplers_to_axi_interconnect_0_ARPROT;
  M07_AXI_arqos <= m07_couplers_to_axi_interconnect_0_ARQOS;
  M07_AXI_arregion <= m07_couplers_to_axi_interconnect_0_ARREGION;
  M07_AXI_arsize <= m07_couplers_to_axi_interconnect_0_ARSIZE;
  M07_AXI_arvalid <= m07_couplers_to_axi_interconnect_0_ARVALID;
  M07_AXI_awaddr <= m07_couplers_to_axi_interconnect_0_AWADDR;
  M07_AXI_awburst <= m07_couplers_to_axi_interconnect_0_AWBURST;
  M07_AXI_awcache <= m07_couplers_to_axi_interconnect_0_AWCACHE;
  M07_AXI_awlen <= m07_couplers_to_axi_interconnect_0_AWLEN;
  M07_AXI_awlock <= m07_couplers_to_axi_interconnect_0_AWLOCK;
  M07_AXI_awprot <= m07_couplers_to_axi_interconnect_0_AWPROT;
  M07_AXI_awqos <= m07_couplers_to_axi_interconnect_0_AWQOS;
  M07_AXI_awregion <= m07_couplers_to_axi_interconnect_0_AWREGION;
  M07_AXI_awsize <= m07_couplers_to_axi_interconnect_0_AWSIZE;
  M07_AXI_awvalid <= m07_couplers_to_axi_interconnect_0_AWVALID;
  M07_AXI_bready <= m07_couplers_to_axi_interconnect_0_BREADY;
  M07_AXI_rready <= m07_couplers_to_axi_interconnect_0_RREADY;
  M07_AXI_wdata <= m07_couplers_to_axi_interconnect_0_WDATA;
  M07_AXI_wlast <= m07_couplers_to_axi_interconnect_0_WLAST;
  M07_AXI_wstrb <= m07_couplers_to_axi_interconnect_0_WSTRB;
  M07_AXI_wvalid <= m07_couplers_to_axi_interconnect_0_WVALID;
  M08_ACLK_1 <= M08_ACLK;
  M08_ARESETN_1(0) <= M08_ARESETN(0);
  M08_AXI_araddr <= m08_couplers_to_axi_interconnect_0_ARADDR;
  M08_AXI_arburst <= m08_couplers_to_axi_interconnect_0_ARBURST;
  M08_AXI_arcache <= m08_couplers_to_axi_interconnect_0_ARCACHE;
  M08_AXI_arlen <= m08_couplers_to_axi_interconnect_0_ARLEN;
  M08_AXI_arlock <= m08_couplers_to_axi_interconnect_0_ARLOCK;
  M08_AXI_arprot <= m08_couplers_to_axi_interconnect_0_ARPROT;
  M08_AXI_arqos <= m08_couplers_to_axi_interconnect_0_ARQOS;
  M08_AXI_arregion <= m08_couplers_to_axi_interconnect_0_ARREGION;
  M08_AXI_arsize <= m08_couplers_to_axi_interconnect_0_ARSIZE;
  M08_AXI_arvalid <= m08_couplers_to_axi_interconnect_0_ARVALID;
  M08_AXI_awaddr <= m08_couplers_to_axi_interconnect_0_AWADDR;
  M08_AXI_awburst <= m08_couplers_to_axi_interconnect_0_AWBURST;
  M08_AXI_awcache <= m08_couplers_to_axi_interconnect_0_AWCACHE;
  M08_AXI_awlen <= m08_couplers_to_axi_interconnect_0_AWLEN;
  M08_AXI_awlock <= m08_couplers_to_axi_interconnect_0_AWLOCK;
  M08_AXI_awprot <= m08_couplers_to_axi_interconnect_0_AWPROT;
  M08_AXI_awqos <= m08_couplers_to_axi_interconnect_0_AWQOS;
  M08_AXI_awregion <= m08_couplers_to_axi_interconnect_0_AWREGION;
  M08_AXI_awsize <= m08_couplers_to_axi_interconnect_0_AWSIZE;
  M08_AXI_awvalid <= m08_couplers_to_axi_interconnect_0_AWVALID;
  M08_AXI_bready <= m08_couplers_to_axi_interconnect_0_BREADY;
  M08_AXI_rready <= m08_couplers_to_axi_interconnect_0_RREADY;
  M08_AXI_wdata <= m08_couplers_to_axi_interconnect_0_WDATA;
  M08_AXI_wlast <= m08_couplers_to_axi_interconnect_0_WLAST;
  M08_AXI_wstrb <= m08_couplers_to_axi_interconnect_0_WSTRB;
  M08_AXI_wvalid <= m08_couplers_to_axi_interconnect_0_WVALID;
  M09_ACLK_1 <= M09_ACLK;
  M09_ARESETN_1(0) <= M09_ARESETN(0);
  M09_AXI_araddr <= m09_couplers_to_axi_interconnect_0_ARADDR;
  M09_AXI_arburst <= m09_couplers_to_axi_interconnect_0_ARBURST;
  M09_AXI_arcache <= m09_couplers_to_axi_interconnect_0_ARCACHE;
  M09_AXI_arlen <= m09_couplers_to_axi_interconnect_0_ARLEN;
  M09_AXI_arlock <= m09_couplers_to_axi_interconnect_0_ARLOCK;
  M09_AXI_arprot <= m09_couplers_to_axi_interconnect_0_ARPROT;
  M09_AXI_arqos <= m09_couplers_to_axi_interconnect_0_ARQOS;
  M09_AXI_arregion <= m09_couplers_to_axi_interconnect_0_ARREGION;
  M09_AXI_arsize <= m09_couplers_to_axi_interconnect_0_ARSIZE;
  M09_AXI_arvalid <= m09_couplers_to_axi_interconnect_0_ARVALID;
  M09_AXI_awaddr <= m09_couplers_to_axi_interconnect_0_AWADDR;
  M09_AXI_awburst <= m09_couplers_to_axi_interconnect_0_AWBURST;
  M09_AXI_awcache <= m09_couplers_to_axi_interconnect_0_AWCACHE;
  M09_AXI_awlen <= m09_couplers_to_axi_interconnect_0_AWLEN;
  M09_AXI_awlock <= m09_couplers_to_axi_interconnect_0_AWLOCK;
  M09_AXI_awprot <= m09_couplers_to_axi_interconnect_0_AWPROT;
  M09_AXI_awqos <= m09_couplers_to_axi_interconnect_0_AWQOS;
  M09_AXI_awregion <= m09_couplers_to_axi_interconnect_0_AWREGION;
  M09_AXI_awsize <= m09_couplers_to_axi_interconnect_0_AWSIZE;
  M09_AXI_awvalid <= m09_couplers_to_axi_interconnect_0_AWVALID;
  M09_AXI_bready <= m09_couplers_to_axi_interconnect_0_BREADY;
  M09_AXI_rready <= m09_couplers_to_axi_interconnect_0_RREADY;
  M09_AXI_wdata <= m09_couplers_to_axi_interconnect_0_WDATA;
  M09_AXI_wlast <= m09_couplers_to_axi_interconnect_0_WLAST;
  M09_AXI_wstrb <= m09_couplers_to_axi_interconnect_0_WSTRB;
  M09_AXI_wvalid <= m09_couplers_to_axi_interconnect_0_WVALID;
  M10_ACLK_1 <= M10_ACLK;
  M10_ARESETN_1(0) <= M10_ARESETN(0);
  M10_AXI_araddr <= m10_couplers_to_axi_interconnect_0_ARADDR;
  M10_AXI_arburst <= m10_couplers_to_axi_interconnect_0_ARBURST;
  M10_AXI_arcache <= m10_couplers_to_axi_interconnect_0_ARCACHE;
  M10_AXI_arlen <= m10_couplers_to_axi_interconnect_0_ARLEN;
  M10_AXI_arlock <= m10_couplers_to_axi_interconnect_0_ARLOCK;
  M10_AXI_arprot <= m10_couplers_to_axi_interconnect_0_ARPROT;
  M10_AXI_arqos <= m10_couplers_to_axi_interconnect_0_ARQOS;
  M10_AXI_arregion <= m10_couplers_to_axi_interconnect_0_ARREGION;
  M10_AXI_arsize <= m10_couplers_to_axi_interconnect_0_ARSIZE;
  M10_AXI_arvalid <= m10_couplers_to_axi_interconnect_0_ARVALID;
  M10_AXI_awaddr <= m10_couplers_to_axi_interconnect_0_AWADDR;
  M10_AXI_awburst <= m10_couplers_to_axi_interconnect_0_AWBURST;
  M10_AXI_awcache <= m10_couplers_to_axi_interconnect_0_AWCACHE;
  M10_AXI_awlen <= m10_couplers_to_axi_interconnect_0_AWLEN;
  M10_AXI_awlock <= m10_couplers_to_axi_interconnect_0_AWLOCK;
  M10_AXI_awprot <= m10_couplers_to_axi_interconnect_0_AWPROT;
  M10_AXI_awqos <= m10_couplers_to_axi_interconnect_0_AWQOS;
  M10_AXI_awregion <= m10_couplers_to_axi_interconnect_0_AWREGION;
  M10_AXI_awsize <= m10_couplers_to_axi_interconnect_0_AWSIZE;
  M10_AXI_awvalid <= m10_couplers_to_axi_interconnect_0_AWVALID;
  M10_AXI_bready <= m10_couplers_to_axi_interconnect_0_BREADY;
  M10_AXI_rready <= m10_couplers_to_axi_interconnect_0_RREADY;
  M10_AXI_wdata <= m10_couplers_to_axi_interconnect_0_WDATA;
  M10_AXI_wlast <= m10_couplers_to_axi_interconnect_0_WLAST;
  M10_AXI_wstrb <= m10_couplers_to_axi_interconnect_0_WSTRB;
  M10_AXI_wvalid <= m10_couplers_to_axi_interconnect_0_WVALID;
  M11_ACLK_1 <= M11_ACLK;
  M11_ARESETN_1(0) <= M11_ARESETN(0);
  M11_AXI_araddr <= m11_couplers_to_axi_interconnect_0_ARADDR;
  M11_AXI_arburst <= m11_couplers_to_axi_interconnect_0_ARBURST;
  M11_AXI_arcache <= m11_couplers_to_axi_interconnect_0_ARCACHE;
  M11_AXI_arlen <= m11_couplers_to_axi_interconnect_0_ARLEN;
  M11_AXI_arlock <= m11_couplers_to_axi_interconnect_0_ARLOCK;
  M11_AXI_arprot <= m11_couplers_to_axi_interconnect_0_ARPROT;
  M11_AXI_arqos <= m11_couplers_to_axi_interconnect_0_ARQOS;
  M11_AXI_arregion <= m11_couplers_to_axi_interconnect_0_ARREGION;
  M11_AXI_arsize <= m11_couplers_to_axi_interconnect_0_ARSIZE;
  M11_AXI_arvalid <= m11_couplers_to_axi_interconnect_0_ARVALID;
  M11_AXI_awaddr <= m11_couplers_to_axi_interconnect_0_AWADDR;
  M11_AXI_awburst <= m11_couplers_to_axi_interconnect_0_AWBURST;
  M11_AXI_awcache <= m11_couplers_to_axi_interconnect_0_AWCACHE;
  M11_AXI_awlen <= m11_couplers_to_axi_interconnect_0_AWLEN;
  M11_AXI_awlock <= m11_couplers_to_axi_interconnect_0_AWLOCK;
  M11_AXI_awprot <= m11_couplers_to_axi_interconnect_0_AWPROT;
  M11_AXI_awqos <= m11_couplers_to_axi_interconnect_0_AWQOS;
  M11_AXI_awregion <= m11_couplers_to_axi_interconnect_0_AWREGION;
  M11_AXI_awsize <= m11_couplers_to_axi_interconnect_0_AWSIZE;
  M11_AXI_awvalid <= m11_couplers_to_axi_interconnect_0_AWVALID;
  M11_AXI_bready <= m11_couplers_to_axi_interconnect_0_BREADY;
  M11_AXI_rready <= m11_couplers_to_axi_interconnect_0_RREADY;
  M11_AXI_wdata <= m11_couplers_to_axi_interconnect_0_WDATA;
  M11_AXI_wlast <= m11_couplers_to_axi_interconnect_0_WLAST;
  M11_AXI_wstrb <= m11_couplers_to_axi_interconnect_0_WSTRB;
  M11_AXI_wvalid <= m11_couplers_to_axi_interconnect_0_WVALID;
  M12_ACLK_1 <= M12_ACLK;
  M12_ARESETN_1(0) <= M12_ARESETN(0);
  M12_AXI_araddr <= m12_couplers_to_axi_interconnect_0_ARADDR;
  M12_AXI_arburst <= m12_couplers_to_axi_interconnect_0_ARBURST;
  M12_AXI_arcache <= m12_couplers_to_axi_interconnect_0_ARCACHE;
  M12_AXI_arlen <= m12_couplers_to_axi_interconnect_0_ARLEN;
  M12_AXI_arlock <= m12_couplers_to_axi_interconnect_0_ARLOCK;
  M12_AXI_arprot <= m12_couplers_to_axi_interconnect_0_ARPROT;
  M12_AXI_arqos <= m12_couplers_to_axi_interconnect_0_ARQOS;
  M12_AXI_arregion <= m12_couplers_to_axi_interconnect_0_ARREGION;
  M12_AXI_arsize <= m12_couplers_to_axi_interconnect_0_ARSIZE;
  M12_AXI_arvalid <= m12_couplers_to_axi_interconnect_0_ARVALID;
  M12_AXI_awaddr <= m12_couplers_to_axi_interconnect_0_AWADDR;
  M12_AXI_awburst <= m12_couplers_to_axi_interconnect_0_AWBURST;
  M12_AXI_awcache <= m12_couplers_to_axi_interconnect_0_AWCACHE;
  M12_AXI_awlen <= m12_couplers_to_axi_interconnect_0_AWLEN;
  M12_AXI_awlock <= m12_couplers_to_axi_interconnect_0_AWLOCK;
  M12_AXI_awprot <= m12_couplers_to_axi_interconnect_0_AWPROT;
  M12_AXI_awqos <= m12_couplers_to_axi_interconnect_0_AWQOS;
  M12_AXI_awregion <= m12_couplers_to_axi_interconnect_0_AWREGION;
  M12_AXI_awsize <= m12_couplers_to_axi_interconnect_0_AWSIZE;
  M12_AXI_awvalid <= m12_couplers_to_axi_interconnect_0_AWVALID;
  M12_AXI_bready <= m12_couplers_to_axi_interconnect_0_BREADY;
  M12_AXI_rready <= m12_couplers_to_axi_interconnect_0_RREADY;
  M12_AXI_wdata <= m12_couplers_to_axi_interconnect_0_WDATA;
  M12_AXI_wlast <= m12_couplers_to_axi_interconnect_0_WLAST;
  M12_AXI_wstrb <= m12_couplers_to_axi_interconnect_0_WSTRB;
  M12_AXI_wvalid <= m12_couplers_to_axi_interconnect_0_WVALID;
  M13_ACLK_1 <= M13_ACLK;
  M13_ARESETN_1(0) <= M13_ARESETN(0);
  M13_AXI_araddr <= m13_couplers_to_axi_interconnect_0_ARADDR;
  M13_AXI_arburst <= m13_couplers_to_axi_interconnect_0_ARBURST;
  M13_AXI_arcache <= m13_couplers_to_axi_interconnect_0_ARCACHE;
  M13_AXI_arlen <= m13_couplers_to_axi_interconnect_0_ARLEN;
  M13_AXI_arlock <= m13_couplers_to_axi_interconnect_0_ARLOCK;
  M13_AXI_arprot <= m13_couplers_to_axi_interconnect_0_ARPROT;
  M13_AXI_arqos <= m13_couplers_to_axi_interconnect_0_ARQOS;
  M13_AXI_arregion <= m13_couplers_to_axi_interconnect_0_ARREGION;
  M13_AXI_arsize <= m13_couplers_to_axi_interconnect_0_ARSIZE;
  M13_AXI_arvalid <= m13_couplers_to_axi_interconnect_0_ARVALID;
  M13_AXI_awaddr <= m13_couplers_to_axi_interconnect_0_AWADDR;
  M13_AXI_awburst <= m13_couplers_to_axi_interconnect_0_AWBURST;
  M13_AXI_awcache <= m13_couplers_to_axi_interconnect_0_AWCACHE;
  M13_AXI_awlen <= m13_couplers_to_axi_interconnect_0_AWLEN;
  M13_AXI_awlock <= m13_couplers_to_axi_interconnect_0_AWLOCK;
  M13_AXI_awprot <= m13_couplers_to_axi_interconnect_0_AWPROT;
  M13_AXI_awqos <= m13_couplers_to_axi_interconnect_0_AWQOS;
  M13_AXI_awregion <= m13_couplers_to_axi_interconnect_0_AWREGION;
  M13_AXI_awsize <= m13_couplers_to_axi_interconnect_0_AWSIZE;
  M13_AXI_awvalid <= m13_couplers_to_axi_interconnect_0_AWVALID;
  M13_AXI_bready <= m13_couplers_to_axi_interconnect_0_BREADY;
  M13_AXI_rready <= m13_couplers_to_axi_interconnect_0_RREADY;
  M13_AXI_wdata <= m13_couplers_to_axi_interconnect_0_WDATA;
  M13_AXI_wlast <= m13_couplers_to_axi_interconnect_0_WLAST;
  M13_AXI_wstrb <= m13_couplers_to_axi_interconnect_0_WSTRB;
  M13_AXI_wvalid <= m13_couplers_to_axi_interconnect_0_WVALID;
  M14_ACLK_1 <= M14_ACLK;
  M14_ARESETN_1(0) <= M14_ARESETN(0);
  M14_AXI_araddr <= m14_couplers_to_axi_interconnect_0_ARADDR;
  M14_AXI_arburst <= m14_couplers_to_axi_interconnect_0_ARBURST;
  M14_AXI_arcache <= m14_couplers_to_axi_interconnect_0_ARCACHE;
  M14_AXI_arlen <= m14_couplers_to_axi_interconnect_0_ARLEN;
  M14_AXI_arlock <= m14_couplers_to_axi_interconnect_0_ARLOCK;
  M14_AXI_arprot <= m14_couplers_to_axi_interconnect_0_ARPROT;
  M14_AXI_arqos <= m14_couplers_to_axi_interconnect_0_ARQOS;
  M14_AXI_arregion <= m14_couplers_to_axi_interconnect_0_ARREGION;
  M14_AXI_arsize <= m14_couplers_to_axi_interconnect_0_ARSIZE;
  M14_AXI_arvalid <= m14_couplers_to_axi_interconnect_0_ARVALID;
  M14_AXI_awaddr <= m14_couplers_to_axi_interconnect_0_AWADDR;
  M14_AXI_awburst <= m14_couplers_to_axi_interconnect_0_AWBURST;
  M14_AXI_awcache <= m14_couplers_to_axi_interconnect_0_AWCACHE;
  M14_AXI_awlen <= m14_couplers_to_axi_interconnect_0_AWLEN;
  M14_AXI_awlock <= m14_couplers_to_axi_interconnect_0_AWLOCK;
  M14_AXI_awprot <= m14_couplers_to_axi_interconnect_0_AWPROT;
  M14_AXI_awqos <= m14_couplers_to_axi_interconnect_0_AWQOS;
  M14_AXI_awregion <= m14_couplers_to_axi_interconnect_0_AWREGION;
  M14_AXI_awsize <= m14_couplers_to_axi_interconnect_0_AWSIZE;
  M14_AXI_awvalid <= m14_couplers_to_axi_interconnect_0_AWVALID;
  M14_AXI_bready <= m14_couplers_to_axi_interconnect_0_BREADY;
  M14_AXI_rready <= m14_couplers_to_axi_interconnect_0_RREADY;
  M14_AXI_wdata <= m14_couplers_to_axi_interconnect_0_WDATA;
  M14_AXI_wlast <= m14_couplers_to_axi_interconnect_0_WLAST;
  M14_AXI_wstrb <= m14_couplers_to_axi_interconnect_0_WSTRB;
  M14_AXI_wvalid <= m14_couplers_to_axi_interconnect_0_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1(0) <= S00_ARESETN(0);
  S00_AXI_arready <= axi_interconnect_0_to_s00_couplers_ARREADY;
  S00_AXI_awready <= axi_interconnect_0_to_s00_couplers_AWREADY;
  S00_AXI_bresp(1 downto 0) <= axi_interconnect_0_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= axi_interconnect_0_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= axi_interconnect_0_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rresp(1 downto 0) <= axi_interconnect_0_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= axi_interconnect_0_to_s00_couplers_RVALID;
  S00_AXI_wready <= axi_interconnect_0_to_s00_couplers_WREADY;
  axi_interconnect_0_ACLK_net <= ACLK;
  axi_interconnect_0_ARESETN_net(0) <= ARESETN(0);
  axi_interconnect_0_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  axi_interconnect_0_to_s00_couplers_ARPROT(1 downto 0) <= S00_AXI_arprot(1 downto 0);
  axi_interconnect_0_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  axi_interconnect_0_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  axi_interconnect_0_to_s00_couplers_AWPROT(1 downto 0) <= S00_AXI_awprot(1 downto 0);
  axi_interconnect_0_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  axi_interconnect_0_to_s00_couplers_BREADY <= S00_AXI_bready;
  axi_interconnect_0_to_s00_couplers_RREADY <= S00_AXI_rready;
  axi_interconnect_0_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  axi_interconnect_0_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  axi_interconnect_0_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  m00_couplers_to_axi_interconnect_0_ARREADY <= M00_AXI_arready;
  m00_couplers_to_axi_interconnect_0_AWREADY <= M00_AXI_awready;
  m00_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_axi_interconnect_0_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_axi_interconnect_0_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_axi_interconnect_0_WREADY <= M00_AXI_wready;
  m01_couplers_to_axi_interconnect_0_ARREADY(0) <= M01_AXI_arready(0);
  m01_couplers_to_axi_interconnect_0_AWREADY(0) <= M01_AXI_awready(0);
  m01_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_axi_interconnect_0_BVALID(0) <= M01_AXI_bvalid(0);
  m01_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_axi_interconnect_0_RLAST(0) <= M01_AXI_rlast(0);
  m01_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_axi_interconnect_0_RVALID(0) <= M01_AXI_rvalid(0);
  m01_couplers_to_axi_interconnect_0_WREADY(0) <= M01_AXI_wready(0);
  m02_couplers_to_axi_interconnect_0_ARREADY <= M02_AXI_arready;
  m02_couplers_to_axi_interconnect_0_AWREADY <= M02_AXI_awready;
  m02_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_axi_interconnect_0_BVALID <= M02_AXI_bvalid;
  m02_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_axi_interconnect_0_RVALID <= M02_AXI_rvalid;
  m02_couplers_to_axi_interconnect_0_WREADY <= M02_AXI_wready;
  m03_couplers_to_axi_interconnect_0_ARREADY <= M03_AXI_arready;
  m03_couplers_to_axi_interconnect_0_AWREADY <= M03_AXI_awready;
  m03_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  m03_couplers_to_axi_interconnect_0_BVALID <= M03_AXI_bvalid;
  m03_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  m03_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  m03_couplers_to_axi_interconnect_0_RVALID <= M03_AXI_rvalid;
  m03_couplers_to_axi_interconnect_0_WREADY <= M03_AXI_wready;
  m04_couplers_to_axi_interconnect_0_ARREADY <= M04_AXI_arready;
  m04_couplers_to_axi_interconnect_0_AWREADY <= M04_AXI_awready;
  m04_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M04_AXI_bresp(1 downto 0);
  m04_couplers_to_axi_interconnect_0_BVALID <= M04_AXI_bvalid;
  m04_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M04_AXI_rdata(31 downto 0);
  m04_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M04_AXI_rresp(1 downto 0);
  m04_couplers_to_axi_interconnect_0_RVALID <= M04_AXI_rvalid;
  m04_couplers_to_axi_interconnect_0_WREADY <= M04_AXI_wready;
  m05_couplers_to_axi_interconnect_0_ARREADY <= M05_AXI_arready;
  m05_couplers_to_axi_interconnect_0_AWREADY <= M05_AXI_awready;
  m05_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M05_AXI_bresp(1 downto 0);
  m05_couplers_to_axi_interconnect_0_BVALID <= M05_AXI_bvalid;
  m05_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M05_AXI_rdata(31 downto 0);
  m05_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M05_AXI_rresp(1 downto 0);
  m05_couplers_to_axi_interconnect_0_RVALID <= M05_AXI_rvalid;
  m05_couplers_to_axi_interconnect_0_WREADY <= M05_AXI_wready;
  m06_couplers_to_axi_interconnect_0_ARREADY <= M06_AXI_arready;
  m06_couplers_to_axi_interconnect_0_AWREADY <= M06_AXI_awready;
  m06_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M06_AXI_bresp(1 downto 0);
  m06_couplers_to_axi_interconnect_0_BVALID <= M06_AXI_bvalid;
  m06_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M06_AXI_rdata(31 downto 0);
  m06_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M06_AXI_rresp(1 downto 0);
  m06_couplers_to_axi_interconnect_0_RVALID <= M06_AXI_rvalid;
  m06_couplers_to_axi_interconnect_0_WREADY <= M06_AXI_wready;
  m07_couplers_to_axi_interconnect_0_ARREADY <= M07_AXI_arready;
  m07_couplers_to_axi_interconnect_0_AWREADY <= M07_AXI_awready;
  m07_couplers_to_axi_interconnect_0_BRESP <= M07_AXI_bresp;
  m07_couplers_to_axi_interconnect_0_BVALID <= M07_AXI_bvalid;
  m07_couplers_to_axi_interconnect_0_RDATA <= M07_AXI_rdata;
  m07_couplers_to_axi_interconnect_0_RLAST <= M07_AXI_rlast;
  m07_couplers_to_axi_interconnect_0_RRESP <= M07_AXI_rresp;
  m07_couplers_to_axi_interconnect_0_RVALID <= M07_AXI_rvalid;
  m07_couplers_to_axi_interconnect_0_WREADY <= M07_AXI_wready;
  m08_couplers_to_axi_interconnect_0_ARREADY <= M08_AXI_arready;
  m08_couplers_to_axi_interconnect_0_AWREADY <= M08_AXI_awready;
  m08_couplers_to_axi_interconnect_0_BRESP <= M08_AXI_bresp;
  m08_couplers_to_axi_interconnect_0_BVALID <= M08_AXI_bvalid;
  m08_couplers_to_axi_interconnect_0_RDATA <= M08_AXI_rdata;
  m08_couplers_to_axi_interconnect_0_RLAST <= M08_AXI_rlast;
  m08_couplers_to_axi_interconnect_0_RRESP <= M08_AXI_rresp;
  m08_couplers_to_axi_interconnect_0_RVALID <= M08_AXI_rvalid;
  m08_couplers_to_axi_interconnect_0_WREADY <= M08_AXI_wready;
  m09_couplers_to_axi_interconnect_0_ARREADY <= M09_AXI_arready;
  m09_couplers_to_axi_interconnect_0_AWREADY <= M09_AXI_awready;
  m09_couplers_to_axi_interconnect_0_BRESP <= M09_AXI_bresp;
  m09_couplers_to_axi_interconnect_0_BVALID <= M09_AXI_bvalid;
  m09_couplers_to_axi_interconnect_0_RDATA <= M09_AXI_rdata;
  m09_couplers_to_axi_interconnect_0_RLAST <= M09_AXI_rlast;
  m09_couplers_to_axi_interconnect_0_RRESP <= M09_AXI_rresp;
  m09_couplers_to_axi_interconnect_0_RVALID <= M09_AXI_rvalid;
  m09_couplers_to_axi_interconnect_0_WREADY <= M09_AXI_wready;
  m10_couplers_to_axi_interconnect_0_ARREADY <= M10_AXI_arready;
  m10_couplers_to_axi_interconnect_0_AWREADY <= M10_AXI_awready;
  m10_couplers_to_axi_interconnect_0_BRESP <= M10_AXI_bresp;
  m10_couplers_to_axi_interconnect_0_BVALID <= M10_AXI_bvalid;
  m10_couplers_to_axi_interconnect_0_RDATA <= M10_AXI_rdata;
  m10_couplers_to_axi_interconnect_0_RLAST <= M10_AXI_rlast;
  m10_couplers_to_axi_interconnect_0_RRESP <= M10_AXI_rresp;
  m10_couplers_to_axi_interconnect_0_RVALID <= M10_AXI_rvalid;
  m10_couplers_to_axi_interconnect_0_WREADY <= M10_AXI_wready;
  m11_couplers_to_axi_interconnect_0_ARREADY <= M11_AXI_arready;
  m11_couplers_to_axi_interconnect_0_AWREADY <= M11_AXI_awready;
  m11_couplers_to_axi_interconnect_0_BRESP <= M11_AXI_bresp;
  m11_couplers_to_axi_interconnect_0_BVALID <= M11_AXI_bvalid;
  m11_couplers_to_axi_interconnect_0_RDATA <= M11_AXI_rdata;
  m11_couplers_to_axi_interconnect_0_RLAST <= M11_AXI_rlast;
  m11_couplers_to_axi_interconnect_0_RRESP <= M11_AXI_rresp;
  m11_couplers_to_axi_interconnect_0_RVALID <= M11_AXI_rvalid;
  m11_couplers_to_axi_interconnect_0_WREADY <= M11_AXI_wready;
  m12_couplers_to_axi_interconnect_0_ARREADY <= M12_AXI_arready;
  m12_couplers_to_axi_interconnect_0_AWREADY <= M12_AXI_awready;
  m12_couplers_to_axi_interconnect_0_BRESP <= M12_AXI_bresp;
  m12_couplers_to_axi_interconnect_0_BVALID <= M12_AXI_bvalid;
  m12_couplers_to_axi_interconnect_0_RDATA <= M12_AXI_rdata;
  m12_couplers_to_axi_interconnect_0_RLAST <= M12_AXI_rlast;
  m12_couplers_to_axi_interconnect_0_RRESP <= M12_AXI_rresp;
  m12_couplers_to_axi_interconnect_0_RVALID <= M12_AXI_rvalid;
  m12_couplers_to_axi_interconnect_0_WREADY <= M12_AXI_wready;
  m13_couplers_to_axi_interconnect_0_ARREADY <= M13_AXI_arready;
  m13_couplers_to_axi_interconnect_0_AWREADY <= M13_AXI_awready;
  m13_couplers_to_axi_interconnect_0_BRESP <= M13_AXI_bresp;
  m13_couplers_to_axi_interconnect_0_BVALID <= M13_AXI_bvalid;
  m13_couplers_to_axi_interconnect_0_RDATA <= M13_AXI_rdata;
  m13_couplers_to_axi_interconnect_0_RLAST <= M13_AXI_rlast;
  m13_couplers_to_axi_interconnect_0_RRESP <= M13_AXI_rresp;
  m13_couplers_to_axi_interconnect_0_RVALID <= M13_AXI_rvalid;
  m13_couplers_to_axi_interconnect_0_WREADY <= M13_AXI_wready;
  m14_couplers_to_axi_interconnect_0_ARREADY <= M14_AXI_arready;
  m14_couplers_to_axi_interconnect_0_AWREADY <= M14_AXI_awready;
  m14_couplers_to_axi_interconnect_0_BRESP <= M14_AXI_bresp;
  m14_couplers_to_axi_interconnect_0_BVALID <= M14_AXI_bvalid;
  m14_couplers_to_axi_interconnect_0_RDATA <= M14_AXI_rdata;
  m14_couplers_to_axi_interconnect_0_RLAST <= M14_AXI_rlast;
  m14_couplers_to_axi_interconnect_0_RRESP <= M14_AXI_rresp;
  m14_couplers_to_axi_interconnect_0_RVALID <= M14_AXI_rvalid;
  m14_couplers_to_axi_interconnect_0_WREADY <= M14_AXI_wready;
m00_couplers: entity work.m00_couplers_imp_ZECGR5
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN(0) => M00_ARESETN_1(0),
      M_AXI_araddr(10 downto 0) => m00_couplers_to_axi_interconnect_0_ARADDR(10 downto 0),
      M_AXI_arready => m00_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m00_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(10 downto 0) => m00_couplers_to_axi_interconnect_0_AWADDR(10 downto 0),
      M_AXI_awready => m00_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m00_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m00_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m00_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m00_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m00_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rlast => xbar_to_m00_couplers_RLAST,
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wlast => xbar_to_m00_couplers_WLAST(0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_1J24L6H
     port map (
      M_ACLK => M01_ACLK_1,
      M_ARESETN(0) => M01_ARESETN_1(0),
      M_AXI_araddr(15 downto 0) => m01_couplers_to_axi_interconnect_0_ARADDR(15 downto 0),
      M_AXI_arburst(1 downto 0) => m01_couplers_to_axi_interconnect_0_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m01_couplers_to_axi_interconnect_0_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => m01_couplers_to_axi_interconnect_0_ARLEN(7 downto 0),
      M_AXI_arlock(0) => m01_couplers_to_axi_interconnect_0_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => m01_couplers_to_axi_interconnect_0_ARPROT(2 downto 0),
      M_AXI_arready(0) => m01_couplers_to_axi_interconnect_0_ARREADY(0),
      M_AXI_arsize(2 downto 0) => m01_couplers_to_axi_interconnect_0_ARSIZE(2 downto 0),
      M_AXI_arvalid(0) => m01_couplers_to_axi_interconnect_0_ARVALID(0),
      M_AXI_awaddr(15 downto 0) => m01_couplers_to_axi_interconnect_0_AWADDR(15 downto 0),
      M_AXI_awburst(1 downto 0) => m01_couplers_to_axi_interconnect_0_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m01_couplers_to_axi_interconnect_0_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => m01_couplers_to_axi_interconnect_0_AWLEN(7 downto 0),
      M_AXI_awlock(0) => m01_couplers_to_axi_interconnect_0_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => m01_couplers_to_axi_interconnect_0_AWPROT(2 downto 0),
      M_AXI_awready(0) => m01_couplers_to_axi_interconnect_0_AWREADY(0),
      M_AXI_awsize(2 downto 0) => m01_couplers_to_axi_interconnect_0_AWSIZE(2 downto 0),
      M_AXI_awvalid(0) => m01_couplers_to_axi_interconnect_0_AWVALID(0),
      M_AXI_bready(0) => m01_couplers_to_axi_interconnect_0_BREADY(0),
      M_AXI_bresp(1 downto 0) => m01_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m01_couplers_to_axi_interconnect_0_BVALID(0),
      M_AXI_rdata(31 downto 0) => m01_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rlast(0) => m01_couplers_to_axi_interconnect_0_RLAST(0),
      M_AXI_rready(0) => m01_couplers_to_axi_interconnect_0_RREADY(0),
      M_AXI_rresp(1 downto 0) => m01_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m01_couplers_to_axi_interconnect_0_RVALID(0),
      M_AXI_wdata(31 downto 0) => m01_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wlast(0) => m01_couplers_to_axi_interconnect_0_WLAST(0),
      M_AXI_wready(0) => m01_couplers_to_axi_interconnect_0_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m01_couplers_to_axi_interconnect_0_WVALID(0),
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr(15 downto 0) => xbar_to_m01_couplers_ARADDR(47 downto 32),
      S_AXI_arburst(1 downto 0) => xbar_to_m01_couplers_ARBURST(3 downto 2),
      S_AXI_arcache(3 downto 0) => xbar_to_m01_couplers_ARCACHE(7 downto 4),
      S_AXI_arlen(7 downto 0) => xbar_to_m01_couplers_ARLEN(15 downto 8),
      S_AXI_arlock(0) => xbar_to_m01_couplers_ARLOCK(1),
      S_AXI_arprot(2 downto 0) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      S_AXI_arready(0) => xbar_to_m01_couplers_ARREADY(0),
      S_AXI_arsize(2 downto 0) => xbar_to_m01_couplers_ARSIZE(5 downto 3),
      S_AXI_arvalid(0) => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(15 downto 0) => xbar_to_m01_couplers_AWADDR(47 downto 32),
      S_AXI_awburst(1 downto 0) => xbar_to_m01_couplers_AWBURST(3 downto 2),
      S_AXI_awcache(3 downto 0) => xbar_to_m01_couplers_AWCACHE(7 downto 4),
      S_AXI_awlen(7 downto 0) => xbar_to_m01_couplers_AWLEN(15 downto 8),
      S_AXI_awlock(0) => xbar_to_m01_couplers_AWLOCK(1),
      S_AXI_awprot(2 downto 0) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      S_AXI_awready(0) => xbar_to_m01_couplers_AWREADY(0),
      S_AXI_awsize(2 downto 0) => xbar_to_m01_couplers_AWSIZE(5 downto 3),
      S_AXI_awvalid(0) => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready(0) => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m01_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rlast(0) => xbar_to_m01_couplers_RLAST(0),
      S_AXI_rready(0) => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m01_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wlast(0) => xbar_to_m01_couplers_WLAST(1),
      S_AXI_wready(0) => xbar_to_m01_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid(0) => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_1NOAWQO
     port map (
      M_ACLK => M02_ACLK_1,
      M_ARESETN(0) => M02_ARESETN_1(0),
      M_AXI_araddr(16 downto 0) => m02_couplers_to_axi_interconnect_0_ARADDR(16 downto 0),
      M_AXI_arprot(2 downto 0) => m02_couplers_to_axi_interconnect_0_ARPROT(2 downto 0),
      M_AXI_arready => m02_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m02_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(16 downto 0) => m02_couplers_to_axi_interconnect_0_AWADDR(16 downto 0),
      M_AXI_awprot(2 downto 0) => m02_couplers_to_axi_interconnect_0_AWPROT(2 downto 0),
      M_AXI_awready => m02_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m02_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m02_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m02_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m02_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m02_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m02_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m02_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m02_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m02_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m02_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m02_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arburst(1 downto 0) => xbar_to_m02_couplers_ARBURST(5 downto 4),
      S_AXI_arcache(3 downto 0) => xbar_to_m02_couplers_ARCACHE(11 downto 8),
      S_AXI_arlen(7 downto 0) => xbar_to_m02_couplers_ARLEN(23 downto 16),
      S_AXI_arlock(0) => xbar_to_m02_couplers_ARLOCK(2),
      S_AXI_arprot(2 downto 0) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      S_AXI_arqos(3 downto 0) => xbar_to_m02_couplers_ARQOS(11 downto 8),
      S_AXI_arready => xbar_to_m02_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m02_couplers_ARREGION(11 downto 8),
      S_AXI_arsize(2 downto 0) => xbar_to_m02_couplers_ARSIZE(8 downto 6),
      S_AXI_arvalid => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awburst(1 downto 0) => xbar_to_m02_couplers_AWBURST(5 downto 4),
      S_AXI_awcache(3 downto 0) => xbar_to_m02_couplers_AWCACHE(11 downto 8),
      S_AXI_awlen(7 downto 0) => xbar_to_m02_couplers_AWLEN(23 downto 16),
      S_AXI_awlock(0) => xbar_to_m02_couplers_AWLOCK(2),
      S_AXI_awprot(2 downto 0) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      S_AXI_awqos(3 downto 0) => xbar_to_m02_couplers_AWQOS(11 downto 8),
      S_AXI_awready => xbar_to_m02_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m02_couplers_AWREGION(11 downto 8),
      S_AXI_awsize(2 downto 0) => xbar_to_m02_couplers_AWSIZE(8 downto 6),
      S_AXI_awvalid => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m02_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rlast => xbar_to_m02_couplers_RLAST,
      S_AXI_rready => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m02_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wlast => xbar_to_m02_couplers_WLAST(2),
      S_AXI_wready => xbar_to_m02_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_URV99K
     port map (
      M_ACLK => M03_ACLK_1,
      M_ARESETN(0) => M03_ARESETN_1(0),
      M_AXI_araddr(16 downto 0) => m03_couplers_to_axi_interconnect_0_ARADDR(16 downto 0),
      M_AXI_arprot(2 downto 0) => m03_couplers_to_axi_interconnect_0_ARPROT(2 downto 0),
      M_AXI_arready => m03_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m03_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(16 downto 0) => m03_couplers_to_axi_interconnect_0_AWADDR(16 downto 0),
      M_AXI_awprot(2 downto 0) => m03_couplers_to_axi_interconnect_0_AWPROT(2 downto 0),
      M_AXI_awready => m03_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m03_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m03_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m03_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m03_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m03_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m03_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m03_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m03_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m03_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m03_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m03_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m03_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      S_AXI_arburst(1 downto 0) => xbar_to_m03_couplers_ARBURST(7 downto 6),
      S_AXI_arcache(3 downto 0) => xbar_to_m03_couplers_ARCACHE(15 downto 12),
      S_AXI_arlen(7 downto 0) => xbar_to_m03_couplers_ARLEN(31 downto 24),
      S_AXI_arlock(0) => xbar_to_m03_couplers_ARLOCK(3),
      S_AXI_arprot(2 downto 0) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      S_AXI_arqos(3 downto 0) => xbar_to_m03_couplers_ARQOS(15 downto 12),
      S_AXI_arready => xbar_to_m03_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m03_couplers_ARREGION(15 downto 12),
      S_AXI_arsize(2 downto 0) => xbar_to_m03_couplers_ARSIZE(11 downto 9),
      S_AXI_arvalid => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(31 downto 0) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      S_AXI_awburst(1 downto 0) => xbar_to_m03_couplers_AWBURST(7 downto 6),
      S_AXI_awcache(3 downto 0) => xbar_to_m03_couplers_AWCACHE(15 downto 12),
      S_AXI_awlen(7 downto 0) => xbar_to_m03_couplers_AWLEN(31 downto 24),
      S_AXI_awlock(0) => xbar_to_m03_couplers_AWLOCK(3),
      S_AXI_awprot(2 downto 0) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      S_AXI_awqos(3 downto 0) => xbar_to_m03_couplers_AWQOS(15 downto 12),
      S_AXI_awready => xbar_to_m03_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m03_couplers_AWREGION(15 downto 12),
      S_AXI_awsize(2 downto 0) => xbar_to_m03_couplers_AWSIZE(11 downto 9),
      S_AXI_awvalid => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bready => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => xbar_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m03_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m03_couplers_RDATA(31 downto 0),
      S_AXI_rlast => xbar_to_m03_couplers_RLAST,
      S_AXI_rready => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => xbar_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m03_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m03_couplers_WDATA(127 downto 96),
      S_AXI_wlast => xbar_to_m03_couplers_WLAST(3),
      S_AXI_wready => xbar_to_m03_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      S_AXI_wvalid => xbar_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_1W8B35E
     port map (
      M_ACLK => M04_ACLK_1,
      M_ARESETN(0) => M04_ARESETN_1(0),
      M_AXI_araddr(15 downto 0) => m04_couplers_to_axi_interconnect_0_ARADDR(15 downto 0),
      M_AXI_arprot(2 downto 0) => m04_couplers_to_axi_interconnect_0_ARPROT(2 downto 0),
      M_AXI_arready => m04_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m04_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(15 downto 0) => m04_couplers_to_axi_interconnect_0_AWADDR(15 downto 0),
      M_AXI_awprot(2 downto 0) => m04_couplers_to_axi_interconnect_0_AWPROT(2 downto 0),
      M_AXI_awready => m04_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m04_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m04_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m04_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m04_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m04_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m04_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m04_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m04_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m04_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m04_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m04_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m04_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      S_AXI_arburst(1 downto 0) => xbar_to_m04_couplers_ARBURST(9 downto 8),
      S_AXI_arcache(3 downto 0) => xbar_to_m04_couplers_ARCACHE(19 downto 16),
      S_AXI_arlen(7 downto 0) => xbar_to_m04_couplers_ARLEN(39 downto 32),
      S_AXI_arlock(0) => xbar_to_m04_couplers_ARLOCK(4),
      S_AXI_arprot(2 downto 0) => xbar_to_m04_couplers_ARPROT(14 downto 12),
      S_AXI_arqos(3 downto 0) => xbar_to_m04_couplers_ARQOS(19 downto 16),
      S_AXI_arready => xbar_to_m04_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m04_couplers_ARREGION(19 downto 16),
      S_AXI_arsize(2 downto 0) => xbar_to_m04_couplers_ARSIZE(14 downto 12),
      S_AXI_arvalid => xbar_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr(31 downto 0) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      S_AXI_awburst(1 downto 0) => xbar_to_m04_couplers_AWBURST(9 downto 8),
      S_AXI_awcache(3 downto 0) => xbar_to_m04_couplers_AWCACHE(19 downto 16),
      S_AXI_awlen(7 downto 0) => xbar_to_m04_couplers_AWLEN(39 downto 32),
      S_AXI_awlock(0) => xbar_to_m04_couplers_AWLOCK(4),
      S_AXI_awprot(2 downto 0) => xbar_to_m04_couplers_AWPROT(14 downto 12),
      S_AXI_awqos(3 downto 0) => xbar_to_m04_couplers_AWQOS(19 downto 16),
      S_AXI_awready => xbar_to_m04_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m04_couplers_AWREGION(19 downto 16),
      S_AXI_awsize(2 downto 0) => xbar_to_m04_couplers_AWSIZE(14 downto 12),
      S_AXI_awvalid => xbar_to_m04_couplers_AWVALID(4),
      S_AXI_bready => xbar_to_m04_couplers_BREADY(4),
      S_AXI_bresp(1 downto 0) => xbar_to_m04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m04_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m04_couplers_RDATA(31 downto 0),
      S_AXI_rlast => xbar_to_m04_couplers_RLAST,
      S_AXI_rready => xbar_to_m04_couplers_RREADY(4),
      S_AXI_rresp(1 downto 0) => xbar_to_m04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m04_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m04_couplers_WDATA(159 downto 128),
      S_AXI_wlast => xbar_to_m04_couplers_WLAST(4),
      S_AXI_wready => xbar_to_m04_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      S_AXI_wvalid => xbar_to_m04_couplers_WVALID(4)
    );
m05_couplers: entity work.m05_couplers_imp_L3WQXM
     port map (
      M_ACLK => M05_ACLK_1,
      M_ARESETN(0) => M05_ARESETN_1(0),
      M_AXI_araddr(16 downto 0) => m05_couplers_to_axi_interconnect_0_ARADDR(16 downto 0),
      M_AXI_arprot(2 downto 0) => m05_couplers_to_axi_interconnect_0_ARPROT(2 downto 0),
      M_AXI_arready => m05_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m05_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(16 downto 0) => m05_couplers_to_axi_interconnect_0_AWADDR(16 downto 0),
      M_AXI_awprot(2 downto 0) => m05_couplers_to_axi_interconnect_0_AWPROT(2 downto 0),
      M_AXI_awready => m05_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m05_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m05_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m05_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m05_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m05_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m05_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m05_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m05_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m05_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m05_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m05_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m05_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      S_AXI_arburst(1 downto 0) => xbar_to_m05_couplers_ARBURST(11 downto 10),
      S_AXI_arcache(3 downto 0) => xbar_to_m05_couplers_ARCACHE(23 downto 20),
      S_AXI_arlen(7 downto 0) => xbar_to_m05_couplers_ARLEN(47 downto 40),
      S_AXI_arlock(0) => xbar_to_m05_couplers_ARLOCK(5),
      S_AXI_arprot(2 downto 0) => xbar_to_m05_couplers_ARPROT(17 downto 15),
      S_AXI_arqos(3 downto 0) => xbar_to_m05_couplers_ARQOS(23 downto 20),
      S_AXI_arready => xbar_to_m05_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m05_couplers_ARREGION(23 downto 20),
      S_AXI_arsize(2 downto 0) => xbar_to_m05_couplers_ARSIZE(17 downto 15),
      S_AXI_arvalid => xbar_to_m05_couplers_ARVALID(5),
      S_AXI_awaddr(31 downto 0) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      S_AXI_awburst(1 downto 0) => xbar_to_m05_couplers_AWBURST(11 downto 10),
      S_AXI_awcache(3 downto 0) => xbar_to_m05_couplers_AWCACHE(23 downto 20),
      S_AXI_awlen(7 downto 0) => xbar_to_m05_couplers_AWLEN(47 downto 40),
      S_AXI_awlock(0) => xbar_to_m05_couplers_AWLOCK(5),
      S_AXI_awprot(2 downto 0) => xbar_to_m05_couplers_AWPROT(17 downto 15),
      S_AXI_awqos(3 downto 0) => xbar_to_m05_couplers_AWQOS(23 downto 20),
      S_AXI_awready => xbar_to_m05_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m05_couplers_AWREGION(23 downto 20),
      S_AXI_awsize(2 downto 0) => xbar_to_m05_couplers_AWSIZE(17 downto 15),
      S_AXI_awvalid => xbar_to_m05_couplers_AWVALID(5),
      S_AXI_bready => xbar_to_m05_couplers_BREADY(5),
      S_AXI_bresp(1 downto 0) => xbar_to_m05_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m05_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m05_couplers_RDATA(31 downto 0),
      S_AXI_rlast => xbar_to_m05_couplers_RLAST,
      S_AXI_rready => xbar_to_m05_couplers_RREADY(5),
      S_AXI_rresp(1 downto 0) => xbar_to_m05_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m05_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m05_couplers_WDATA(191 downto 160),
      S_AXI_wlast => xbar_to_m05_couplers_WLAST(5),
      S_AXI_wready => xbar_to_m05_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      S_AXI_wvalid => xbar_to_m05_couplers_WVALID(5)
    );
m06_couplers: entity work.m06_couplers_imp_PX9VKZ
     port map (
      M_ACLK => M06_ACLK_1,
      M_ARESETN(0) => M06_ARESETN_1(0),
      M_AXI_araddr(16 downto 0) => m06_couplers_to_axi_interconnect_0_ARADDR(16 downto 0),
      M_AXI_arprot(2 downto 0) => m06_couplers_to_axi_interconnect_0_ARPROT(2 downto 0),
      M_AXI_arready => m06_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m06_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(16 downto 0) => m06_couplers_to_axi_interconnect_0_AWADDR(16 downto 0),
      M_AXI_awprot(2 downto 0) => m06_couplers_to_axi_interconnect_0_AWPROT(2 downto 0),
      M_AXI_awready => m06_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m06_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m06_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m06_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m06_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m06_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m06_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m06_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m06_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m06_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m06_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m06_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m06_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      S_AXI_arburst(1 downto 0) => xbar_to_m06_couplers_ARBURST(13 downto 12),
      S_AXI_arcache(3 downto 0) => xbar_to_m06_couplers_ARCACHE(27 downto 24),
      S_AXI_arlen(7 downto 0) => xbar_to_m06_couplers_ARLEN(55 downto 48),
      S_AXI_arlock(0) => xbar_to_m06_couplers_ARLOCK(6),
      S_AXI_arprot(2 downto 0) => xbar_to_m06_couplers_ARPROT(20 downto 18),
      S_AXI_arqos(3 downto 0) => xbar_to_m06_couplers_ARQOS(27 downto 24),
      S_AXI_arready => xbar_to_m06_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m06_couplers_ARREGION(27 downto 24),
      S_AXI_arsize(2 downto 0) => xbar_to_m06_couplers_ARSIZE(20 downto 18),
      S_AXI_arvalid => xbar_to_m06_couplers_ARVALID(6),
      S_AXI_awaddr(31 downto 0) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      S_AXI_awburst(1 downto 0) => xbar_to_m06_couplers_AWBURST(13 downto 12),
      S_AXI_awcache(3 downto 0) => xbar_to_m06_couplers_AWCACHE(27 downto 24),
      S_AXI_awlen(7 downto 0) => xbar_to_m06_couplers_AWLEN(55 downto 48),
      S_AXI_awlock(0) => xbar_to_m06_couplers_AWLOCK(6),
      S_AXI_awprot(2 downto 0) => xbar_to_m06_couplers_AWPROT(20 downto 18),
      S_AXI_awqos(3 downto 0) => xbar_to_m06_couplers_AWQOS(27 downto 24),
      S_AXI_awready => xbar_to_m06_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m06_couplers_AWREGION(27 downto 24),
      S_AXI_awsize(2 downto 0) => xbar_to_m06_couplers_AWSIZE(20 downto 18),
      S_AXI_awvalid => xbar_to_m06_couplers_AWVALID(6),
      S_AXI_bready => xbar_to_m06_couplers_BREADY(6),
      S_AXI_bresp(1 downto 0) => xbar_to_m06_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m06_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m06_couplers_RDATA(31 downto 0),
      S_AXI_rlast => xbar_to_m06_couplers_RLAST,
      S_AXI_rready => xbar_to_m06_couplers_RREADY(6),
      S_AXI_rresp(1 downto 0) => xbar_to_m06_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m06_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m06_couplers_WDATA(223 downto 192),
      S_AXI_wlast => xbar_to_m06_couplers_WLAST(6),
      S_AXI_wready => xbar_to_m06_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      S_AXI_wvalid => xbar_to_m06_couplers_WVALID(6)
    );
m07_couplers: entity work.m07_couplers_imp_1RF8UDN
     port map (
      M_ACLK => M07_ACLK_1,
      M_ARESETN(0) => M07_ARESETN_1(0),
      M_AXI_araddr => m07_couplers_to_axi_interconnect_0_ARADDR,
      M_AXI_arburst => m07_couplers_to_axi_interconnect_0_ARBURST,
      M_AXI_arcache => m07_couplers_to_axi_interconnect_0_ARCACHE,
      M_AXI_arlen => m07_couplers_to_axi_interconnect_0_ARLEN,
      M_AXI_arlock => m07_couplers_to_axi_interconnect_0_ARLOCK,
      M_AXI_arprot => m07_couplers_to_axi_interconnect_0_ARPROT,
      M_AXI_arqos => m07_couplers_to_axi_interconnect_0_ARQOS,
      M_AXI_arready => m07_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arregion => m07_couplers_to_axi_interconnect_0_ARREGION,
      M_AXI_arsize => m07_couplers_to_axi_interconnect_0_ARSIZE,
      M_AXI_arvalid => m07_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr => m07_couplers_to_axi_interconnect_0_AWADDR,
      M_AXI_awburst => m07_couplers_to_axi_interconnect_0_AWBURST,
      M_AXI_awcache => m07_couplers_to_axi_interconnect_0_AWCACHE,
      M_AXI_awlen => m07_couplers_to_axi_interconnect_0_AWLEN,
      M_AXI_awlock => m07_couplers_to_axi_interconnect_0_AWLOCK,
      M_AXI_awprot => m07_couplers_to_axi_interconnect_0_AWPROT,
      M_AXI_awqos => m07_couplers_to_axi_interconnect_0_AWQOS,
      M_AXI_awready => m07_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awregion => m07_couplers_to_axi_interconnect_0_AWREGION,
      M_AXI_awsize => m07_couplers_to_axi_interconnect_0_AWSIZE,
      M_AXI_awvalid => m07_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m07_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp => m07_couplers_to_axi_interconnect_0_BRESP,
      M_AXI_bvalid => m07_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata => m07_couplers_to_axi_interconnect_0_RDATA,
      M_AXI_rlast => m07_couplers_to_axi_interconnect_0_RLAST,
      M_AXI_rready => m07_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp => m07_couplers_to_axi_interconnect_0_RRESP,
      M_AXI_rvalid => m07_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata => m07_couplers_to_axi_interconnect_0_WDATA,
      M_AXI_wlast => m07_couplers_to_axi_interconnect_0_WLAST,
      M_AXI_wready => m07_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb => m07_couplers_to_axi_interconnect_0_WSTRB,
      M_AXI_wvalid => m07_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr => xbar_to_m07_couplers_ARADDR(224),
      S_AXI_arburst => xbar_to_m07_couplers_ARBURST(14),
      S_AXI_arcache => xbar_to_m07_couplers_ARCACHE(28),
      S_AXI_arlen => xbar_to_m07_couplers_ARLEN(56),
      S_AXI_arlock => xbar_to_m07_couplers_ARLOCK(7),
      S_AXI_arprot => xbar_to_m07_couplers_ARPROT(21),
      S_AXI_arqos => xbar_to_m07_couplers_ARQOS(28),
      S_AXI_arready => xbar_to_m07_couplers_ARREADY,
      S_AXI_arregion => xbar_to_m07_couplers_ARREGION(28),
      S_AXI_arsize => xbar_to_m07_couplers_ARSIZE(21),
      S_AXI_arvalid => xbar_to_m07_couplers_ARVALID(7),
      S_AXI_awaddr => xbar_to_m07_couplers_AWADDR(224),
      S_AXI_awburst => xbar_to_m07_couplers_AWBURST(14),
      S_AXI_awcache => xbar_to_m07_couplers_AWCACHE(28),
      S_AXI_awlen => xbar_to_m07_couplers_AWLEN(56),
      S_AXI_awlock => xbar_to_m07_couplers_AWLOCK(7),
      S_AXI_awprot => xbar_to_m07_couplers_AWPROT(21),
      S_AXI_awqos => xbar_to_m07_couplers_AWQOS(28),
      S_AXI_awready => xbar_to_m07_couplers_AWREADY,
      S_AXI_awregion => xbar_to_m07_couplers_AWREGION(28),
      S_AXI_awsize => xbar_to_m07_couplers_AWSIZE(21),
      S_AXI_awvalid => xbar_to_m07_couplers_AWVALID(7),
      S_AXI_bready => xbar_to_m07_couplers_BREADY(7),
      S_AXI_bresp => xbar_to_m07_couplers_BRESP,
      S_AXI_bvalid => xbar_to_m07_couplers_BVALID,
      S_AXI_rdata => xbar_to_m07_couplers_RDATA,
      S_AXI_rlast => xbar_to_m07_couplers_RLAST,
      S_AXI_rready => xbar_to_m07_couplers_RREADY(7),
      S_AXI_rresp => xbar_to_m07_couplers_RRESP,
      S_AXI_rvalid => xbar_to_m07_couplers_RVALID,
      S_AXI_wdata => xbar_to_m07_couplers_WDATA(224),
      S_AXI_wlast => xbar_to_m07_couplers_WLAST(7),
      S_AXI_wready => xbar_to_m07_couplers_WREADY,
      S_AXI_wstrb => xbar_to_m07_couplers_WSTRB(28),
      S_AXI_wvalid => xbar_to_m07_couplers_WVALID(7)
    );
m08_couplers: entity work.m08_couplers_imp_1CV6FYU
     port map (
      M_ACLK => M08_ACLK_1,
      M_ARESETN(0) => M08_ARESETN_1(0),
      M_AXI_araddr => m08_couplers_to_axi_interconnect_0_ARADDR,
      M_AXI_arburst => m08_couplers_to_axi_interconnect_0_ARBURST,
      M_AXI_arcache => m08_couplers_to_axi_interconnect_0_ARCACHE,
      M_AXI_arlen => m08_couplers_to_axi_interconnect_0_ARLEN,
      M_AXI_arlock => m08_couplers_to_axi_interconnect_0_ARLOCK,
      M_AXI_arprot => m08_couplers_to_axi_interconnect_0_ARPROT,
      M_AXI_arqos => m08_couplers_to_axi_interconnect_0_ARQOS,
      M_AXI_arready => m08_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arregion => m08_couplers_to_axi_interconnect_0_ARREGION,
      M_AXI_arsize => m08_couplers_to_axi_interconnect_0_ARSIZE,
      M_AXI_arvalid => m08_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr => m08_couplers_to_axi_interconnect_0_AWADDR,
      M_AXI_awburst => m08_couplers_to_axi_interconnect_0_AWBURST,
      M_AXI_awcache => m08_couplers_to_axi_interconnect_0_AWCACHE,
      M_AXI_awlen => m08_couplers_to_axi_interconnect_0_AWLEN,
      M_AXI_awlock => m08_couplers_to_axi_interconnect_0_AWLOCK,
      M_AXI_awprot => m08_couplers_to_axi_interconnect_0_AWPROT,
      M_AXI_awqos => m08_couplers_to_axi_interconnect_0_AWQOS,
      M_AXI_awready => m08_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awregion => m08_couplers_to_axi_interconnect_0_AWREGION,
      M_AXI_awsize => m08_couplers_to_axi_interconnect_0_AWSIZE,
      M_AXI_awvalid => m08_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m08_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp => m08_couplers_to_axi_interconnect_0_BRESP,
      M_AXI_bvalid => m08_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata => m08_couplers_to_axi_interconnect_0_RDATA,
      M_AXI_rlast => m08_couplers_to_axi_interconnect_0_RLAST,
      M_AXI_rready => m08_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp => m08_couplers_to_axi_interconnect_0_RRESP,
      M_AXI_rvalid => m08_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata => m08_couplers_to_axi_interconnect_0_WDATA,
      M_AXI_wlast => m08_couplers_to_axi_interconnect_0_WLAST,
      M_AXI_wready => m08_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb => m08_couplers_to_axi_interconnect_0_WSTRB,
      M_AXI_wvalid => m08_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr => xbar_to_m08_couplers_ARADDR(256),
      S_AXI_arburst => xbar_to_m08_couplers_ARBURST(16),
      S_AXI_arcache => xbar_to_m08_couplers_ARCACHE(32),
      S_AXI_arlen => xbar_to_m08_couplers_ARLEN(64),
      S_AXI_arlock => xbar_to_m08_couplers_ARLOCK(8),
      S_AXI_arprot => xbar_to_m08_couplers_ARPROT(24),
      S_AXI_arqos => xbar_to_m08_couplers_ARQOS(32),
      S_AXI_arready => xbar_to_m08_couplers_ARREADY,
      S_AXI_arregion => xbar_to_m08_couplers_ARREGION(32),
      S_AXI_arsize => xbar_to_m08_couplers_ARSIZE(24),
      S_AXI_arvalid => xbar_to_m08_couplers_ARVALID(8),
      S_AXI_awaddr => xbar_to_m08_couplers_AWADDR(256),
      S_AXI_awburst => xbar_to_m08_couplers_AWBURST(16),
      S_AXI_awcache => xbar_to_m08_couplers_AWCACHE(32),
      S_AXI_awlen => xbar_to_m08_couplers_AWLEN(64),
      S_AXI_awlock => xbar_to_m08_couplers_AWLOCK(8),
      S_AXI_awprot => xbar_to_m08_couplers_AWPROT(24),
      S_AXI_awqos => xbar_to_m08_couplers_AWQOS(32),
      S_AXI_awready => xbar_to_m08_couplers_AWREADY,
      S_AXI_awregion => xbar_to_m08_couplers_AWREGION(32),
      S_AXI_awsize => xbar_to_m08_couplers_AWSIZE(24),
      S_AXI_awvalid => xbar_to_m08_couplers_AWVALID(8),
      S_AXI_bready => xbar_to_m08_couplers_BREADY(8),
      S_AXI_bresp => xbar_to_m08_couplers_BRESP,
      S_AXI_bvalid => xbar_to_m08_couplers_BVALID,
      S_AXI_rdata => xbar_to_m08_couplers_RDATA,
      S_AXI_rlast => xbar_to_m08_couplers_RLAST,
      S_AXI_rready => xbar_to_m08_couplers_RREADY(8),
      S_AXI_rresp => xbar_to_m08_couplers_RRESP,
      S_AXI_rvalid => xbar_to_m08_couplers_RVALID,
      S_AXI_wdata => xbar_to_m08_couplers_WDATA(256),
      S_AXI_wlast => xbar_to_m08_couplers_WLAST(8),
      S_AXI_wready => xbar_to_m08_couplers_WREADY,
      S_AXI_wstrb => xbar_to_m08_couplers_WSTRB(32),
      S_AXI_wvalid => xbar_to_m08_couplers_WVALID(8)
    );
m09_couplers: entity work.m09_couplers_imp_2QVHZ2
     port map (
      M_ACLK => M09_ACLK_1,
      M_ARESETN(0) => M09_ARESETN_1(0),
      M_AXI_araddr => m09_couplers_to_axi_interconnect_0_ARADDR,
      M_AXI_arburst => m09_couplers_to_axi_interconnect_0_ARBURST,
      M_AXI_arcache => m09_couplers_to_axi_interconnect_0_ARCACHE,
      M_AXI_arlen => m09_couplers_to_axi_interconnect_0_ARLEN,
      M_AXI_arlock => m09_couplers_to_axi_interconnect_0_ARLOCK,
      M_AXI_arprot => m09_couplers_to_axi_interconnect_0_ARPROT,
      M_AXI_arqos => m09_couplers_to_axi_interconnect_0_ARQOS,
      M_AXI_arready => m09_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arregion => m09_couplers_to_axi_interconnect_0_ARREGION,
      M_AXI_arsize => m09_couplers_to_axi_interconnect_0_ARSIZE,
      M_AXI_arvalid => m09_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr => m09_couplers_to_axi_interconnect_0_AWADDR,
      M_AXI_awburst => m09_couplers_to_axi_interconnect_0_AWBURST,
      M_AXI_awcache => m09_couplers_to_axi_interconnect_0_AWCACHE,
      M_AXI_awlen => m09_couplers_to_axi_interconnect_0_AWLEN,
      M_AXI_awlock => m09_couplers_to_axi_interconnect_0_AWLOCK,
      M_AXI_awprot => m09_couplers_to_axi_interconnect_0_AWPROT,
      M_AXI_awqos => m09_couplers_to_axi_interconnect_0_AWQOS,
      M_AXI_awready => m09_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awregion => m09_couplers_to_axi_interconnect_0_AWREGION,
      M_AXI_awsize => m09_couplers_to_axi_interconnect_0_AWSIZE,
      M_AXI_awvalid => m09_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m09_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp => m09_couplers_to_axi_interconnect_0_BRESP,
      M_AXI_bvalid => m09_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata => m09_couplers_to_axi_interconnect_0_RDATA,
      M_AXI_rlast => m09_couplers_to_axi_interconnect_0_RLAST,
      M_AXI_rready => m09_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp => m09_couplers_to_axi_interconnect_0_RRESP,
      M_AXI_rvalid => m09_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata => m09_couplers_to_axi_interconnect_0_WDATA,
      M_AXI_wlast => m09_couplers_to_axi_interconnect_0_WLAST,
      M_AXI_wready => m09_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb => m09_couplers_to_axi_interconnect_0_WSTRB,
      M_AXI_wvalid => m09_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr => xbar_to_m09_couplers_ARADDR(288),
      S_AXI_arburst => xbar_to_m09_couplers_ARBURST(18),
      S_AXI_arcache => xbar_to_m09_couplers_ARCACHE(36),
      S_AXI_arlen => xbar_to_m09_couplers_ARLEN(72),
      S_AXI_arlock => xbar_to_m09_couplers_ARLOCK(9),
      S_AXI_arprot => xbar_to_m09_couplers_ARPROT(27),
      S_AXI_arqos => xbar_to_m09_couplers_ARQOS(36),
      S_AXI_arready => xbar_to_m09_couplers_ARREADY,
      S_AXI_arregion => xbar_to_m09_couplers_ARREGION(36),
      S_AXI_arsize => xbar_to_m09_couplers_ARSIZE(27),
      S_AXI_arvalid => xbar_to_m09_couplers_ARVALID(9),
      S_AXI_awaddr => xbar_to_m09_couplers_AWADDR(288),
      S_AXI_awburst => xbar_to_m09_couplers_AWBURST(18),
      S_AXI_awcache => xbar_to_m09_couplers_AWCACHE(36),
      S_AXI_awlen => xbar_to_m09_couplers_AWLEN(72),
      S_AXI_awlock => xbar_to_m09_couplers_AWLOCK(9),
      S_AXI_awprot => xbar_to_m09_couplers_AWPROT(27),
      S_AXI_awqos => xbar_to_m09_couplers_AWQOS(36),
      S_AXI_awready => xbar_to_m09_couplers_AWREADY,
      S_AXI_awregion => xbar_to_m09_couplers_AWREGION(36),
      S_AXI_awsize => xbar_to_m09_couplers_AWSIZE(27),
      S_AXI_awvalid => xbar_to_m09_couplers_AWVALID(9),
      S_AXI_bready => xbar_to_m09_couplers_BREADY(9),
      S_AXI_bresp => xbar_to_m09_couplers_BRESP,
      S_AXI_bvalid => xbar_to_m09_couplers_BVALID,
      S_AXI_rdata => xbar_to_m09_couplers_RDATA,
      S_AXI_rlast => xbar_to_m09_couplers_RLAST,
      S_AXI_rready => xbar_to_m09_couplers_RREADY(9),
      S_AXI_rresp => xbar_to_m09_couplers_RRESP,
      S_AXI_rvalid => xbar_to_m09_couplers_RVALID,
      S_AXI_wdata => xbar_to_m09_couplers_WDATA(288),
      S_AXI_wlast => xbar_to_m09_couplers_WLAST(9),
      S_AXI_wready => xbar_to_m09_couplers_WREADY,
      S_AXI_wstrb => xbar_to_m09_couplers_WSTRB(36),
      S_AXI_wvalid => xbar_to_m09_couplers_WVALID(9)
    );
m10_couplers: entity work.m10_couplers_imp_1M9HV0G
     port map (
      M_ACLK => M10_ACLK_1,
      M_ARESETN(0) => M10_ARESETN_1(0),
      M_AXI_araddr => m10_couplers_to_axi_interconnect_0_ARADDR,
      M_AXI_arburst => m10_couplers_to_axi_interconnect_0_ARBURST,
      M_AXI_arcache => m10_couplers_to_axi_interconnect_0_ARCACHE,
      M_AXI_arlen => m10_couplers_to_axi_interconnect_0_ARLEN,
      M_AXI_arlock => m10_couplers_to_axi_interconnect_0_ARLOCK,
      M_AXI_arprot => m10_couplers_to_axi_interconnect_0_ARPROT,
      M_AXI_arqos => m10_couplers_to_axi_interconnect_0_ARQOS,
      M_AXI_arready => m10_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arregion => m10_couplers_to_axi_interconnect_0_ARREGION,
      M_AXI_arsize => m10_couplers_to_axi_interconnect_0_ARSIZE,
      M_AXI_arvalid => m10_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr => m10_couplers_to_axi_interconnect_0_AWADDR,
      M_AXI_awburst => m10_couplers_to_axi_interconnect_0_AWBURST,
      M_AXI_awcache => m10_couplers_to_axi_interconnect_0_AWCACHE,
      M_AXI_awlen => m10_couplers_to_axi_interconnect_0_AWLEN,
      M_AXI_awlock => m10_couplers_to_axi_interconnect_0_AWLOCK,
      M_AXI_awprot => m10_couplers_to_axi_interconnect_0_AWPROT,
      M_AXI_awqos => m10_couplers_to_axi_interconnect_0_AWQOS,
      M_AXI_awready => m10_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awregion => m10_couplers_to_axi_interconnect_0_AWREGION,
      M_AXI_awsize => m10_couplers_to_axi_interconnect_0_AWSIZE,
      M_AXI_awvalid => m10_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m10_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp => m10_couplers_to_axi_interconnect_0_BRESP,
      M_AXI_bvalid => m10_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata => m10_couplers_to_axi_interconnect_0_RDATA,
      M_AXI_rlast => m10_couplers_to_axi_interconnect_0_RLAST,
      M_AXI_rready => m10_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp => m10_couplers_to_axi_interconnect_0_RRESP,
      M_AXI_rvalid => m10_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata => m10_couplers_to_axi_interconnect_0_WDATA,
      M_AXI_wlast => m10_couplers_to_axi_interconnect_0_WLAST,
      M_AXI_wready => m10_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb => m10_couplers_to_axi_interconnect_0_WSTRB,
      M_AXI_wvalid => m10_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr => xbar_to_m10_couplers_ARADDR(320),
      S_AXI_arburst => xbar_to_m10_couplers_ARBURST(20),
      S_AXI_arcache => xbar_to_m10_couplers_ARCACHE(40),
      S_AXI_arlen => xbar_to_m10_couplers_ARLEN(80),
      S_AXI_arlock => xbar_to_m10_couplers_ARLOCK(10),
      S_AXI_arprot => xbar_to_m10_couplers_ARPROT(30),
      S_AXI_arqos => xbar_to_m10_couplers_ARQOS(40),
      S_AXI_arready => xbar_to_m10_couplers_ARREADY,
      S_AXI_arregion => xbar_to_m10_couplers_ARREGION(40),
      S_AXI_arsize => xbar_to_m10_couplers_ARSIZE(30),
      S_AXI_arvalid => xbar_to_m10_couplers_ARVALID(10),
      S_AXI_awaddr => xbar_to_m10_couplers_AWADDR(320),
      S_AXI_awburst => xbar_to_m10_couplers_AWBURST(20),
      S_AXI_awcache => xbar_to_m10_couplers_AWCACHE(40),
      S_AXI_awlen => xbar_to_m10_couplers_AWLEN(80),
      S_AXI_awlock => xbar_to_m10_couplers_AWLOCK(10),
      S_AXI_awprot => xbar_to_m10_couplers_AWPROT(30),
      S_AXI_awqos => xbar_to_m10_couplers_AWQOS(40),
      S_AXI_awready => xbar_to_m10_couplers_AWREADY,
      S_AXI_awregion => xbar_to_m10_couplers_AWREGION(40),
      S_AXI_awsize => xbar_to_m10_couplers_AWSIZE(30),
      S_AXI_awvalid => xbar_to_m10_couplers_AWVALID(10),
      S_AXI_bready => xbar_to_m10_couplers_BREADY(10),
      S_AXI_bresp => xbar_to_m10_couplers_BRESP,
      S_AXI_bvalid => xbar_to_m10_couplers_BVALID,
      S_AXI_rdata => xbar_to_m10_couplers_RDATA,
      S_AXI_rlast => xbar_to_m10_couplers_RLAST,
      S_AXI_rready => xbar_to_m10_couplers_RREADY(10),
      S_AXI_rresp => xbar_to_m10_couplers_RRESP,
      S_AXI_rvalid => xbar_to_m10_couplers_RVALID,
      S_AXI_wdata => xbar_to_m10_couplers_WDATA(320),
      S_AXI_wlast => xbar_to_m10_couplers_WLAST(10),
      S_AXI_wready => xbar_to_m10_couplers_WREADY,
      S_AXI_wstrb => xbar_to_m10_couplers_WSTRB(40),
      S_AXI_wvalid => xbar_to_m10_couplers_WVALID(10)
    );
m11_couplers: entity work.m11_couplers_imp_SV42AW
     port map (
      M_ACLK => M11_ACLK_1,
      M_ARESETN(0) => M11_ARESETN_1(0),
      M_AXI_araddr => m11_couplers_to_axi_interconnect_0_ARADDR,
      M_AXI_arburst => m11_couplers_to_axi_interconnect_0_ARBURST,
      M_AXI_arcache => m11_couplers_to_axi_interconnect_0_ARCACHE,
      M_AXI_arlen => m11_couplers_to_axi_interconnect_0_ARLEN,
      M_AXI_arlock => m11_couplers_to_axi_interconnect_0_ARLOCK,
      M_AXI_arprot => m11_couplers_to_axi_interconnect_0_ARPROT,
      M_AXI_arqos => m11_couplers_to_axi_interconnect_0_ARQOS,
      M_AXI_arready => m11_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arregion => m11_couplers_to_axi_interconnect_0_ARREGION,
      M_AXI_arsize => m11_couplers_to_axi_interconnect_0_ARSIZE,
      M_AXI_arvalid => m11_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr => m11_couplers_to_axi_interconnect_0_AWADDR,
      M_AXI_awburst => m11_couplers_to_axi_interconnect_0_AWBURST,
      M_AXI_awcache => m11_couplers_to_axi_interconnect_0_AWCACHE,
      M_AXI_awlen => m11_couplers_to_axi_interconnect_0_AWLEN,
      M_AXI_awlock => m11_couplers_to_axi_interconnect_0_AWLOCK,
      M_AXI_awprot => m11_couplers_to_axi_interconnect_0_AWPROT,
      M_AXI_awqos => m11_couplers_to_axi_interconnect_0_AWQOS,
      M_AXI_awready => m11_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awregion => m11_couplers_to_axi_interconnect_0_AWREGION,
      M_AXI_awsize => m11_couplers_to_axi_interconnect_0_AWSIZE,
      M_AXI_awvalid => m11_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m11_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp => m11_couplers_to_axi_interconnect_0_BRESP,
      M_AXI_bvalid => m11_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata => m11_couplers_to_axi_interconnect_0_RDATA,
      M_AXI_rlast => m11_couplers_to_axi_interconnect_0_RLAST,
      M_AXI_rready => m11_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp => m11_couplers_to_axi_interconnect_0_RRESP,
      M_AXI_rvalid => m11_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata => m11_couplers_to_axi_interconnect_0_WDATA,
      M_AXI_wlast => m11_couplers_to_axi_interconnect_0_WLAST,
      M_AXI_wready => m11_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb => m11_couplers_to_axi_interconnect_0_WSTRB,
      M_AXI_wvalid => m11_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr => xbar_to_m11_couplers_ARADDR(352),
      S_AXI_arburst => xbar_to_m11_couplers_ARBURST(22),
      S_AXI_arcache => xbar_to_m11_couplers_ARCACHE(44),
      S_AXI_arlen => xbar_to_m11_couplers_ARLEN(88),
      S_AXI_arlock => xbar_to_m11_couplers_ARLOCK(11),
      S_AXI_arprot => xbar_to_m11_couplers_ARPROT(33),
      S_AXI_arqos => xbar_to_m11_couplers_ARQOS(44),
      S_AXI_arready => xbar_to_m11_couplers_ARREADY,
      S_AXI_arregion => xbar_to_m11_couplers_ARREGION(44),
      S_AXI_arsize => xbar_to_m11_couplers_ARSIZE(33),
      S_AXI_arvalid => xbar_to_m11_couplers_ARVALID(11),
      S_AXI_awaddr => xbar_to_m11_couplers_AWADDR(352),
      S_AXI_awburst => xbar_to_m11_couplers_AWBURST(22),
      S_AXI_awcache => xbar_to_m11_couplers_AWCACHE(44),
      S_AXI_awlen => xbar_to_m11_couplers_AWLEN(88),
      S_AXI_awlock => xbar_to_m11_couplers_AWLOCK(11),
      S_AXI_awprot => xbar_to_m11_couplers_AWPROT(33),
      S_AXI_awqos => xbar_to_m11_couplers_AWQOS(44),
      S_AXI_awready => xbar_to_m11_couplers_AWREADY,
      S_AXI_awregion => xbar_to_m11_couplers_AWREGION(44),
      S_AXI_awsize => xbar_to_m11_couplers_AWSIZE(33),
      S_AXI_awvalid => xbar_to_m11_couplers_AWVALID(11),
      S_AXI_bready => xbar_to_m11_couplers_BREADY(11),
      S_AXI_bresp => xbar_to_m11_couplers_BRESP,
      S_AXI_bvalid => xbar_to_m11_couplers_BVALID,
      S_AXI_rdata => xbar_to_m11_couplers_RDATA,
      S_AXI_rlast => xbar_to_m11_couplers_RLAST,
      S_AXI_rready => xbar_to_m11_couplers_RREADY(11),
      S_AXI_rresp => xbar_to_m11_couplers_RRESP,
      S_AXI_rvalid => xbar_to_m11_couplers_RVALID,
      S_AXI_wdata => xbar_to_m11_couplers_WDATA(352),
      S_AXI_wlast => xbar_to_m11_couplers_WLAST(11),
      S_AXI_wready => xbar_to_m11_couplers_WREADY,
      S_AXI_wstrb => xbar_to_m11_couplers_WSTRB(44),
      S_AXI_wvalid => xbar_to_m11_couplers_WVALID(11)
    );
m12_couplers: entity work.m12_couplers_imp_XPEK0H
     port map (
      M_ACLK => M12_ACLK_1,
      M_ARESETN(0) => M12_ARESETN_1(0),
      M_AXI_araddr => m12_couplers_to_axi_interconnect_0_ARADDR,
      M_AXI_arburst => m12_couplers_to_axi_interconnect_0_ARBURST,
      M_AXI_arcache => m12_couplers_to_axi_interconnect_0_ARCACHE,
      M_AXI_arlen => m12_couplers_to_axi_interconnect_0_ARLEN,
      M_AXI_arlock => m12_couplers_to_axi_interconnect_0_ARLOCK,
      M_AXI_arprot => m12_couplers_to_axi_interconnect_0_ARPROT,
      M_AXI_arqos => m12_couplers_to_axi_interconnect_0_ARQOS,
      M_AXI_arready => m12_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arregion => m12_couplers_to_axi_interconnect_0_ARREGION,
      M_AXI_arsize => m12_couplers_to_axi_interconnect_0_ARSIZE,
      M_AXI_arvalid => m12_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr => m12_couplers_to_axi_interconnect_0_AWADDR,
      M_AXI_awburst => m12_couplers_to_axi_interconnect_0_AWBURST,
      M_AXI_awcache => m12_couplers_to_axi_interconnect_0_AWCACHE,
      M_AXI_awlen => m12_couplers_to_axi_interconnect_0_AWLEN,
      M_AXI_awlock => m12_couplers_to_axi_interconnect_0_AWLOCK,
      M_AXI_awprot => m12_couplers_to_axi_interconnect_0_AWPROT,
      M_AXI_awqos => m12_couplers_to_axi_interconnect_0_AWQOS,
      M_AXI_awready => m12_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awregion => m12_couplers_to_axi_interconnect_0_AWREGION,
      M_AXI_awsize => m12_couplers_to_axi_interconnect_0_AWSIZE,
      M_AXI_awvalid => m12_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m12_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp => m12_couplers_to_axi_interconnect_0_BRESP,
      M_AXI_bvalid => m12_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata => m12_couplers_to_axi_interconnect_0_RDATA,
      M_AXI_rlast => m12_couplers_to_axi_interconnect_0_RLAST,
      M_AXI_rready => m12_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp => m12_couplers_to_axi_interconnect_0_RRESP,
      M_AXI_rvalid => m12_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata => m12_couplers_to_axi_interconnect_0_WDATA,
      M_AXI_wlast => m12_couplers_to_axi_interconnect_0_WLAST,
      M_AXI_wready => m12_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb => m12_couplers_to_axi_interconnect_0_WSTRB,
      M_AXI_wvalid => m12_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr => xbar_to_m12_couplers_ARADDR(384),
      S_AXI_arburst => xbar_to_m12_couplers_ARBURST(24),
      S_AXI_arcache => xbar_to_m12_couplers_ARCACHE(48),
      S_AXI_arlen => xbar_to_m12_couplers_ARLEN(96),
      S_AXI_arlock => xbar_to_m12_couplers_ARLOCK(12),
      S_AXI_arprot => xbar_to_m12_couplers_ARPROT(36),
      S_AXI_arqos => xbar_to_m12_couplers_ARQOS(48),
      S_AXI_arready => xbar_to_m12_couplers_ARREADY,
      S_AXI_arregion => xbar_to_m12_couplers_ARREGION(48),
      S_AXI_arsize => xbar_to_m12_couplers_ARSIZE(36),
      S_AXI_arvalid => xbar_to_m12_couplers_ARVALID(12),
      S_AXI_awaddr => xbar_to_m12_couplers_AWADDR(384),
      S_AXI_awburst => xbar_to_m12_couplers_AWBURST(24),
      S_AXI_awcache => xbar_to_m12_couplers_AWCACHE(48),
      S_AXI_awlen => xbar_to_m12_couplers_AWLEN(96),
      S_AXI_awlock => xbar_to_m12_couplers_AWLOCK(12),
      S_AXI_awprot => xbar_to_m12_couplers_AWPROT(36),
      S_AXI_awqos => xbar_to_m12_couplers_AWQOS(48),
      S_AXI_awready => xbar_to_m12_couplers_AWREADY,
      S_AXI_awregion => xbar_to_m12_couplers_AWREGION(48),
      S_AXI_awsize => xbar_to_m12_couplers_AWSIZE(36),
      S_AXI_awvalid => xbar_to_m12_couplers_AWVALID(12),
      S_AXI_bready => xbar_to_m12_couplers_BREADY(12),
      S_AXI_bresp => xbar_to_m12_couplers_BRESP,
      S_AXI_bvalid => xbar_to_m12_couplers_BVALID,
      S_AXI_rdata => xbar_to_m12_couplers_RDATA,
      S_AXI_rlast => xbar_to_m12_couplers_RLAST,
      S_AXI_rready => xbar_to_m12_couplers_RREADY(12),
      S_AXI_rresp => xbar_to_m12_couplers_RRESP,
      S_AXI_rvalid => xbar_to_m12_couplers_RVALID,
      S_AXI_wdata => xbar_to_m12_couplers_WDATA(384),
      S_AXI_wlast => xbar_to_m12_couplers_WLAST(12),
      S_AXI_wready => xbar_to_m12_couplers_WREADY,
      S_AXI_wstrb => xbar_to_m12_couplers_WSTRB(48),
      S_AXI_wvalid => xbar_to_m12_couplers_WVALID(12)
    );
m13_couplers: entity work.m13_couplers_imp_1HEWHFD
     port map (
      M_ACLK => M13_ACLK_1,
      M_ARESETN(0) => M13_ARESETN_1(0),
      M_AXI_araddr => m13_couplers_to_axi_interconnect_0_ARADDR,
      M_AXI_arburst => m13_couplers_to_axi_interconnect_0_ARBURST,
      M_AXI_arcache => m13_couplers_to_axi_interconnect_0_ARCACHE,
      M_AXI_arlen => m13_couplers_to_axi_interconnect_0_ARLEN,
      M_AXI_arlock => m13_couplers_to_axi_interconnect_0_ARLOCK,
      M_AXI_arprot => m13_couplers_to_axi_interconnect_0_ARPROT,
      M_AXI_arqos => m13_couplers_to_axi_interconnect_0_ARQOS,
      M_AXI_arready => m13_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arregion => m13_couplers_to_axi_interconnect_0_ARREGION,
      M_AXI_arsize => m13_couplers_to_axi_interconnect_0_ARSIZE,
      M_AXI_arvalid => m13_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr => m13_couplers_to_axi_interconnect_0_AWADDR,
      M_AXI_awburst => m13_couplers_to_axi_interconnect_0_AWBURST,
      M_AXI_awcache => m13_couplers_to_axi_interconnect_0_AWCACHE,
      M_AXI_awlen => m13_couplers_to_axi_interconnect_0_AWLEN,
      M_AXI_awlock => m13_couplers_to_axi_interconnect_0_AWLOCK,
      M_AXI_awprot => m13_couplers_to_axi_interconnect_0_AWPROT,
      M_AXI_awqos => m13_couplers_to_axi_interconnect_0_AWQOS,
      M_AXI_awready => m13_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awregion => m13_couplers_to_axi_interconnect_0_AWREGION,
      M_AXI_awsize => m13_couplers_to_axi_interconnect_0_AWSIZE,
      M_AXI_awvalid => m13_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m13_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp => m13_couplers_to_axi_interconnect_0_BRESP,
      M_AXI_bvalid => m13_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata => m13_couplers_to_axi_interconnect_0_RDATA,
      M_AXI_rlast => m13_couplers_to_axi_interconnect_0_RLAST,
      M_AXI_rready => m13_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp => m13_couplers_to_axi_interconnect_0_RRESP,
      M_AXI_rvalid => m13_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata => m13_couplers_to_axi_interconnect_0_WDATA,
      M_AXI_wlast => m13_couplers_to_axi_interconnect_0_WLAST,
      M_AXI_wready => m13_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb => m13_couplers_to_axi_interconnect_0_WSTRB,
      M_AXI_wvalid => m13_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr => xbar_to_m13_couplers_ARADDR(416),
      S_AXI_arburst => xbar_to_m13_couplers_ARBURST(26),
      S_AXI_arcache => xbar_to_m13_couplers_ARCACHE(52),
      S_AXI_arlen => xbar_to_m13_couplers_ARLEN(104),
      S_AXI_arlock => xbar_to_m13_couplers_ARLOCK(13),
      S_AXI_arprot => xbar_to_m13_couplers_ARPROT(39),
      S_AXI_arqos => xbar_to_m13_couplers_ARQOS(52),
      S_AXI_arready => xbar_to_m13_couplers_ARREADY,
      S_AXI_arregion => xbar_to_m13_couplers_ARREGION(52),
      S_AXI_arsize => xbar_to_m13_couplers_ARSIZE(39),
      S_AXI_arvalid => xbar_to_m13_couplers_ARVALID(13),
      S_AXI_awaddr => xbar_to_m13_couplers_AWADDR(416),
      S_AXI_awburst => xbar_to_m13_couplers_AWBURST(26),
      S_AXI_awcache => xbar_to_m13_couplers_AWCACHE(52),
      S_AXI_awlen => xbar_to_m13_couplers_AWLEN(104),
      S_AXI_awlock => xbar_to_m13_couplers_AWLOCK(13),
      S_AXI_awprot => xbar_to_m13_couplers_AWPROT(39),
      S_AXI_awqos => xbar_to_m13_couplers_AWQOS(52),
      S_AXI_awready => xbar_to_m13_couplers_AWREADY,
      S_AXI_awregion => xbar_to_m13_couplers_AWREGION(52),
      S_AXI_awsize => xbar_to_m13_couplers_AWSIZE(39),
      S_AXI_awvalid => xbar_to_m13_couplers_AWVALID(13),
      S_AXI_bready => xbar_to_m13_couplers_BREADY(13),
      S_AXI_bresp => xbar_to_m13_couplers_BRESP,
      S_AXI_bvalid => xbar_to_m13_couplers_BVALID,
      S_AXI_rdata => xbar_to_m13_couplers_RDATA,
      S_AXI_rlast => xbar_to_m13_couplers_RLAST,
      S_AXI_rready => xbar_to_m13_couplers_RREADY(13),
      S_AXI_rresp => xbar_to_m13_couplers_RRESP,
      S_AXI_rvalid => xbar_to_m13_couplers_RVALID,
      S_AXI_wdata => xbar_to_m13_couplers_WDATA(416),
      S_AXI_wlast => xbar_to_m13_couplers_WLAST(13),
      S_AXI_wready => xbar_to_m13_couplers_WREADY,
      S_AXI_wstrb => xbar_to_m13_couplers_WSTRB(52),
      S_AXI_wvalid => xbar_to_m13_couplers_WVALID(13)
    );
m14_couplers: entity work.m14_couplers_imp_PE05CZ
     port map (
      M_ACLK => M14_ACLK_1,
      M_ARESETN(0) => M14_ARESETN_1(0),
      M_AXI_araddr => m14_couplers_to_axi_interconnect_0_ARADDR,
      M_AXI_arburst => m14_couplers_to_axi_interconnect_0_ARBURST,
      M_AXI_arcache => m14_couplers_to_axi_interconnect_0_ARCACHE,
      M_AXI_arlen => m14_couplers_to_axi_interconnect_0_ARLEN,
      M_AXI_arlock => m14_couplers_to_axi_interconnect_0_ARLOCK,
      M_AXI_arprot => m14_couplers_to_axi_interconnect_0_ARPROT,
      M_AXI_arqos => m14_couplers_to_axi_interconnect_0_ARQOS,
      M_AXI_arready => m14_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arregion => m14_couplers_to_axi_interconnect_0_ARREGION,
      M_AXI_arsize => m14_couplers_to_axi_interconnect_0_ARSIZE,
      M_AXI_arvalid => m14_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr => m14_couplers_to_axi_interconnect_0_AWADDR,
      M_AXI_awburst => m14_couplers_to_axi_interconnect_0_AWBURST,
      M_AXI_awcache => m14_couplers_to_axi_interconnect_0_AWCACHE,
      M_AXI_awlen => m14_couplers_to_axi_interconnect_0_AWLEN,
      M_AXI_awlock => m14_couplers_to_axi_interconnect_0_AWLOCK,
      M_AXI_awprot => m14_couplers_to_axi_interconnect_0_AWPROT,
      M_AXI_awqos => m14_couplers_to_axi_interconnect_0_AWQOS,
      M_AXI_awready => m14_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awregion => m14_couplers_to_axi_interconnect_0_AWREGION,
      M_AXI_awsize => m14_couplers_to_axi_interconnect_0_AWSIZE,
      M_AXI_awvalid => m14_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m14_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp => m14_couplers_to_axi_interconnect_0_BRESP,
      M_AXI_bvalid => m14_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata => m14_couplers_to_axi_interconnect_0_RDATA,
      M_AXI_rlast => m14_couplers_to_axi_interconnect_0_RLAST,
      M_AXI_rready => m14_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp => m14_couplers_to_axi_interconnect_0_RRESP,
      M_AXI_rvalid => m14_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata => m14_couplers_to_axi_interconnect_0_WDATA,
      M_AXI_wlast => m14_couplers_to_axi_interconnect_0_WLAST,
      M_AXI_wready => m14_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb => m14_couplers_to_axi_interconnect_0_WSTRB,
      M_AXI_wvalid => m14_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr => xbar_to_m14_couplers_ARADDR(448),
      S_AXI_arburst => xbar_to_m14_couplers_ARBURST(28),
      S_AXI_arcache => xbar_to_m14_couplers_ARCACHE(56),
      S_AXI_arlen => xbar_to_m14_couplers_ARLEN(112),
      S_AXI_arlock => xbar_to_m14_couplers_ARLOCK(14),
      S_AXI_arprot => xbar_to_m14_couplers_ARPROT(42),
      S_AXI_arqos => xbar_to_m14_couplers_ARQOS(56),
      S_AXI_arready => xbar_to_m14_couplers_ARREADY,
      S_AXI_arregion => xbar_to_m14_couplers_ARREGION(56),
      S_AXI_arsize => xbar_to_m14_couplers_ARSIZE(42),
      S_AXI_arvalid => xbar_to_m14_couplers_ARVALID(14),
      S_AXI_awaddr => xbar_to_m14_couplers_AWADDR(448),
      S_AXI_awburst => xbar_to_m14_couplers_AWBURST(28),
      S_AXI_awcache => xbar_to_m14_couplers_AWCACHE(56),
      S_AXI_awlen => xbar_to_m14_couplers_AWLEN(112),
      S_AXI_awlock => xbar_to_m14_couplers_AWLOCK(14),
      S_AXI_awprot => xbar_to_m14_couplers_AWPROT(42),
      S_AXI_awqos => xbar_to_m14_couplers_AWQOS(56),
      S_AXI_awready => xbar_to_m14_couplers_AWREADY,
      S_AXI_awregion => xbar_to_m14_couplers_AWREGION(56),
      S_AXI_awsize => xbar_to_m14_couplers_AWSIZE(42),
      S_AXI_awvalid => xbar_to_m14_couplers_AWVALID(14),
      S_AXI_bready => xbar_to_m14_couplers_BREADY(14),
      S_AXI_bresp => xbar_to_m14_couplers_BRESP,
      S_AXI_bvalid => xbar_to_m14_couplers_BVALID,
      S_AXI_rdata => xbar_to_m14_couplers_RDATA,
      S_AXI_rlast => xbar_to_m14_couplers_RLAST,
      S_AXI_rready => xbar_to_m14_couplers_RREADY(14),
      S_AXI_rresp => xbar_to_m14_couplers_RRESP,
      S_AXI_rvalid => xbar_to_m14_couplers_RVALID,
      S_AXI_wdata => xbar_to_m14_couplers_WDATA(448),
      S_AXI_wlast => xbar_to_m14_couplers_WLAST(14),
      S_AXI_wready => xbar_to_m14_couplers_WREADY,
      S_AXI_wstrb => xbar_to_m14_couplers_WSTRB(56),
      S_AXI_wvalid => xbar_to_m14_couplers_WVALID(14)
    );
s00_couplers: entity work.s00_couplers_imp_BMC27U
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rlast => s00_couplers_to_xbar_RLAST(0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast => s00_couplers_to_xbar_WLAST,
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN(0) => S00_ARESETN_1(0),
      S_AXI_araddr(31 downto 0) => axi_interconnect_0_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(1 downto 0) => axi_interconnect_0_to_s00_couplers_ARPROT(1 downto 0),
      S_AXI_arready => axi_interconnect_0_to_s00_couplers_ARREADY,
      S_AXI_arvalid => axi_interconnect_0_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => axi_interconnect_0_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(1 downto 0) => axi_interconnect_0_to_s00_couplers_AWPROT(1 downto 0),
      S_AXI_awready => axi_interconnect_0_to_s00_couplers_AWREADY,
      S_AXI_awvalid => axi_interconnect_0_to_s00_couplers_AWVALID,
      S_AXI_bready => axi_interconnect_0_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_interconnect_0_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_interconnect_0_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => axi_interconnect_0_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rready => axi_interconnect_0_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_interconnect_0_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_interconnect_0_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => axi_interconnect_0_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wready => axi_interconnect_0_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_interconnect_0_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => axi_interconnect_0_to_s00_couplers_WVALID
    );
xbar: component v7_bd_xbar_0
     port map (
      aclk => axi_interconnect_0_ACLK_net,
      aresetn => axi_interconnect_0_ARESETN_net(0),
      m_axi_araddr(479 downto 448) => xbar_to_m14_couplers_ARADDR(479 downto 448),
      m_axi_araddr(447 downto 416) => xbar_to_m13_couplers_ARADDR(447 downto 416),
      m_axi_araddr(415 downto 384) => xbar_to_m12_couplers_ARADDR(415 downto 384),
      m_axi_araddr(383 downto 352) => xbar_to_m11_couplers_ARADDR(383 downto 352),
      m_axi_araddr(351 downto 320) => xbar_to_m10_couplers_ARADDR(351 downto 320),
      m_axi_araddr(319 downto 288) => xbar_to_m09_couplers_ARADDR(319 downto 288),
      m_axi_araddr(287 downto 256) => xbar_to_m08_couplers_ARADDR(287 downto 256),
      m_axi_araddr(255 downto 224) => xbar_to_m07_couplers_ARADDR(255 downto 224),
      m_axi_araddr(223 downto 192) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      m_axi_araddr(191 downto 160) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      m_axi_araddr(159 downto 128) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      m_axi_araddr(127 downto 96) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(29 downto 28) => xbar_to_m14_couplers_ARBURST(29 downto 28),
      m_axi_arburst(27 downto 26) => xbar_to_m13_couplers_ARBURST(27 downto 26),
      m_axi_arburst(25 downto 24) => xbar_to_m12_couplers_ARBURST(25 downto 24),
      m_axi_arburst(23 downto 22) => xbar_to_m11_couplers_ARBURST(23 downto 22),
      m_axi_arburst(21 downto 20) => xbar_to_m10_couplers_ARBURST(21 downto 20),
      m_axi_arburst(19 downto 18) => xbar_to_m09_couplers_ARBURST(19 downto 18),
      m_axi_arburst(17 downto 16) => xbar_to_m08_couplers_ARBURST(17 downto 16),
      m_axi_arburst(15 downto 14) => xbar_to_m07_couplers_ARBURST(15 downto 14),
      m_axi_arburst(13 downto 12) => xbar_to_m06_couplers_ARBURST(13 downto 12),
      m_axi_arburst(11 downto 10) => xbar_to_m05_couplers_ARBURST(11 downto 10),
      m_axi_arburst(9 downto 8) => xbar_to_m04_couplers_ARBURST(9 downto 8),
      m_axi_arburst(7 downto 6) => xbar_to_m03_couplers_ARBURST(7 downto 6),
      m_axi_arburst(5 downto 4) => xbar_to_m02_couplers_ARBURST(5 downto 4),
      m_axi_arburst(3 downto 2) => xbar_to_m01_couplers_ARBURST(3 downto 2),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(59 downto 56) => xbar_to_m14_couplers_ARCACHE(59 downto 56),
      m_axi_arcache(55 downto 52) => xbar_to_m13_couplers_ARCACHE(55 downto 52),
      m_axi_arcache(51 downto 48) => xbar_to_m12_couplers_ARCACHE(51 downto 48),
      m_axi_arcache(47 downto 44) => xbar_to_m11_couplers_ARCACHE(47 downto 44),
      m_axi_arcache(43 downto 40) => xbar_to_m10_couplers_ARCACHE(43 downto 40),
      m_axi_arcache(39 downto 36) => xbar_to_m09_couplers_ARCACHE(39 downto 36),
      m_axi_arcache(35 downto 32) => xbar_to_m08_couplers_ARCACHE(35 downto 32),
      m_axi_arcache(31 downto 28) => xbar_to_m07_couplers_ARCACHE(31 downto 28),
      m_axi_arcache(27 downto 24) => xbar_to_m06_couplers_ARCACHE(27 downto 24),
      m_axi_arcache(23 downto 20) => xbar_to_m05_couplers_ARCACHE(23 downto 20),
      m_axi_arcache(19 downto 16) => xbar_to_m04_couplers_ARCACHE(19 downto 16),
      m_axi_arcache(15 downto 12) => xbar_to_m03_couplers_ARCACHE(15 downto 12),
      m_axi_arcache(11 downto 8) => xbar_to_m02_couplers_ARCACHE(11 downto 8),
      m_axi_arcache(7 downto 4) => xbar_to_m01_couplers_ARCACHE(7 downto 4),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(119 downto 112) => xbar_to_m14_couplers_ARLEN(119 downto 112),
      m_axi_arlen(111 downto 104) => xbar_to_m13_couplers_ARLEN(111 downto 104),
      m_axi_arlen(103 downto 96) => xbar_to_m12_couplers_ARLEN(103 downto 96),
      m_axi_arlen(95 downto 88) => xbar_to_m11_couplers_ARLEN(95 downto 88),
      m_axi_arlen(87 downto 80) => xbar_to_m10_couplers_ARLEN(87 downto 80),
      m_axi_arlen(79 downto 72) => xbar_to_m09_couplers_ARLEN(79 downto 72),
      m_axi_arlen(71 downto 64) => xbar_to_m08_couplers_ARLEN(71 downto 64),
      m_axi_arlen(63 downto 56) => xbar_to_m07_couplers_ARLEN(63 downto 56),
      m_axi_arlen(55 downto 48) => xbar_to_m06_couplers_ARLEN(55 downto 48),
      m_axi_arlen(47 downto 40) => xbar_to_m05_couplers_ARLEN(47 downto 40),
      m_axi_arlen(39 downto 32) => xbar_to_m04_couplers_ARLEN(39 downto 32),
      m_axi_arlen(31 downto 24) => xbar_to_m03_couplers_ARLEN(31 downto 24),
      m_axi_arlen(23 downto 16) => xbar_to_m02_couplers_ARLEN(23 downto 16),
      m_axi_arlen(15 downto 8) => xbar_to_m01_couplers_ARLEN(15 downto 8),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(14) => xbar_to_m14_couplers_ARLOCK(14),
      m_axi_arlock(13) => xbar_to_m13_couplers_ARLOCK(13),
      m_axi_arlock(12) => xbar_to_m12_couplers_ARLOCK(12),
      m_axi_arlock(11) => xbar_to_m11_couplers_ARLOCK(11),
      m_axi_arlock(10) => xbar_to_m10_couplers_ARLOCK(10),
      m_axi_arlock(9) => xbar_to_m09_couplers_ARLOCK(9),
      m_axi_arlock(8) => xbar_to_m08_couplers_ARLOCK(8),
      m_axi_arlock(7) => xbar_to_m07_couplers_ARLOCK(7),
      m_axi_arlock(6) => xbar_to_m06_couplers_ARLOCK(6),
      m_axi_arlock(5) => xbar_to_m05_couplers_ARLOCK(5),
      m_axi_arlock(4) => xbar_to_m04_couplers_ARLOCK(4),
      m_axi_arlock(3) => xbar_to_m03_couplers_ARLOCK(3),
      m_axi_arlock(2) => xbar_to_m02_couplers_ARLOCK(2),
      m_axi_arlock(1) => xbar_to_m01_couplers_ARLOCK(1),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      m_axi_arprot(44 downto 42) => xbar_to_m14_couplers_ARPROT(44 downto 42),
      m_axi_arprot(41 downto 39) => xbar_to_m13_couplers_ARPROT(41 downto 39),
      m_axi_arprot(38 downto 36) => xbar_to_m12_couplers_ARPROT(38 downto 36),
      m_axi_arprot(35 downto 33) => xbar_to_m11_couplers_ARPROT(35 downto 33),
      m_axi_arprot(32 downto 30) => xbar_to_m10_couplers_ARPROT(32 downto 30),
      m_axi_arprot(29 downto 27) => xbar_to_m09_couplers_ARPROT(29 downto 27),
      m_axi_arprot(26 downto 24) => xbar_to_m08_couplers_ARPROT(26 downto 24),
      m_axi_arprot(23 downto 21) => xbar_to_m07_couplers_ARPROT(23 downto 21),
      m_axi_arprot(20 downto 18) => xbar_to_m06_couplers_ARPROT(20 downto 18),
      m_axi_arprot(17 downto 15) => xbar_to_m05_couplers_ARPROT(17 downto 15),
      m_axi_arprot(14 downto 12) => xbar_to_m04_couplers_ARPROT(14 downto 12),
      m_axi_arprot(11 downto 9) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      m_axi_arprot(8 downto 6) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      m_axi_arprot(5 downto 3) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(59 downto 56) => xbar_to_m14_couplers_ARQOS(59 downto 56),
      m_axi_arqos(55 downto 52) => xbar_to_m13_couplers_ARQOS(55 downto 52),
      m_axi_arqos(51 downto 48) => xbar_to_m12_couplers_ARQOS(51 downto 48),
      m_axi_arqos(47 downto 44) => xbar_to_m11_couplers_ARQOS(47 downto 44),
      m_axi_arqos(43 downto 40) => xbar_to_m10_couplers_ARQOS(43 downto 40),
      m_axi_arqos(39 downto 36) => xbar_to_m09_couplers_ARQOS(39 downto 36),
      m_axi_arqos(35 downto 32) => xbar_to_m08_couplers_ARQOS(35 downto 32),
      m_axi_arqos(31 downto 28) => xbar_to_m07_couplers_ARQOS(31 downto 28),
      m_axi_arqos(27 downto 24) => xbar_to_m06_couplers_ARQOS(27 downto 24),
      m_axi_arqos(23 downto 20) => xbar_to_m05_couplers_ARQOS(23 downto 20),
      m_axi_arqos(19 downto 16) => xbar_to_m04_couplers_ARQOS(19 downto 16),
      m_axi_arqos(15 downto 12) => xbar_to_m03_couplers_ARQOS(15 downto 12),
      m_axi_arqos(11 downto 8) => xbar_to_m02_couplers_ARQOS(11 downto 8),
      m_axi_arqos(7 downto 4) => NLW_xbar_m_axi_arqos_UNCONNECTED(7 downto 4),
      m_axi_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready(14) => xbar_to_m14_couplers_ARREADY,
      m_axi_arready(13) => xbar_to_m13_couplers_ARREADY,
      m_axi_arready(12) => xbar_to_m12_couplers_ARREADY,
      m_axi_arready(11) => xbar_to_m11_couplers_ARREADY,
      m_axi_arready(10) => xbar_to_m10_couplers_ARREADY,
      m_axi_arready(9) => xbar_to_m09_couplers_ARREADY,
      m_axi_arready(8) => xbar_to_m08_couplers_ARREADY,
      m_axi_arready(7) => xbar_to_m07_couplers_ARREADY,
      m_axi_arready(6) => xbar_to_m06_couplers_ARREADY,
      m_axi_arready(5) => xbar_to_m05_couplers_ARREADY,
      m_axi_arready(4) => xbar_to_m04_couplers_ARREADY,
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY,
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY,
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY(0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arregion(59 downto 56) => xbar_to_m14_couplers_ARREGION(59 downto 56),
      m_axi_arregion(55 downto 52) => xbar_to_m13_couplers_ARREGION(55 downto 52),
      m_axi_arregion(51 downto 48) => xbar_to_m12_couplers_ARREGION(51 downto 48),
      m_axi_arregion(47 downto 44) => xbar_to_m11_couplers_ARREGION(47 downto 44),
      m_axi_arregion(43 downto 40) => xbar_to_m10_couplers_ARREGION(43 downto 40),
      m_axi_arregion(39 downto 36) => xbar_to_m09_couplers_ARREGION(39 downto 36),
      m_axi_arregion(35 downto 32) => xbar_to_m08_couplers_ARREGION(35 downto 32),
      m_axi_arregion(31 downto 28) => xbar_to_m07_couplers_ARREGION(31 downto 28),
      m_axi_arregion(27 downto 24) => xbar_to_m06_couplers_ARREGION(27 downto 24),
      m_axi_arregion(23 downto 20) => xbar_to_m05_couplers_ARREGION(23 downto 20),
      m_axi_arregion(19 downto 16) => xbar_to_m04_couplers_ARREGION(19 downto 16),
      m_axi_arregion(15 downto 12) => xbar_to_m03_couplers_ARREGION(15 downto 12),
      m_axi_arregion(11 downto 8) => xbar_to_m02_couplers_ARREGION(11 downto 8),
      m_axi_arregion(7 downto 4) => NLW_xbar_m_axi_arregion_UNCONNECTED(7 downto 4),
      m_axi_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      m_axi_arsize(44 downto 42) => xbar_to_m14_couplers_ARSIZE(44 downto 42),
      m_axi_arsize(41 downto 39) => xbar_to_m13_couplers_ARSIZE(41 downto 39),
      m_axi_arsize(38 downto 36) => xbar_to_m12_couplers_ARSIZE(38 downto 36),
      m_axi_arsize(35 downto 33) => xbar_to_m11_couplers_ARSIZE(35 downto 33),
      m_axi_arsize(32 downto 30) => xbar_to_m10_couplers_ARSIZE(32 downto 30),
      m_axi_arsize(29 downto 27) => xbar_to_m09_couplers_ARSIZE(29 downto 27),
      m_axi_arsize(26 downto 24) => xbar_to_m08_couplers_ARSIZE(26 downto 24),
      m_axi_arsize(23 downto 21) => xbar_to_m07_couplers_ARSIZE(23 downto 21),
      m_axi_arsize(20 downto 18) => xbar_to_m06_couplers_ARSIZE(20 downto 18),
      m_axi_arsize(17 downto 15) => xbar_to_m05_couplers_ARSIZE(17 downto 15),
      m_axi_arsize(14 downto 12) => xbar_to_m04_couplers_ARSIZE(14 downto 12),
      m_axi_arsize(11 downto 9) => xbar_to_m03_couplers_ARSIZE(11 downto 9),
      m_axi_arsize(8 downto 6) => xbar_to_m02_couplers_ARSIZE(8 downto 6),
      m_axi_arsize(5 downto 3) => xbar_to_m01_couplers_ARSIZE(5 downto 3),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid(14) => xbar_to_m14_couplers_ARVALID(14),
      m_axi_arvalid(13) => xbar_to_m13_couplers_ARVALID(13),
      m_axi_arvalid(12) => xbar_to_m12_couplers_ARVALID(12),
      m_axi_arvalid(11) => xbar_to_m11_couplers_ARVALID(11),
      m_axi_arvalid(10) => xbar_to_m10_couplers_ARVALID(10),
      m_axi_arvalid(9) => xbar_to_m09_couplers_ARVALID(9),
      m_axi_arvalid(8) => xbar_to_m08_couplers_ARVALID(8),
      m_axi_arvalid(7) => xbar_to_m07_couplers_ARVALID(7),
      m_axi_arvalid(6) => xbar_to_m06_couplers_ARVALID(6),
      m_axi_arvalid(5) => xbar_to_m05_couplers_ARVALID(5),
      m_axi_arvalid(4) => xbar_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(479 downto 448) => xbar_to_m14_couplers_AWADDR(479 downto 448),
      m_axi_awaddr(447 downto 416) => xbar_to_m13_couplers_AWADDR(447 downto 416),
      m_axi_awaddr(415 downto 384) => xbar_to_m12_couplers_AWADDR(415 downto 384),
      m_axi_awaddr(383 downto 352) => xbar_to_m11_couplers_AWADDR(383 downto 352),
      m_axi_awaddr(351 downto 320) => xbar_to_m10_couplers_AWADDR(351 downto 320),
      m_axi_awaddr(319 downto 288) => xbar_to_m09_couplers_AWADDR(319 downto 288),
      m_axi_awaddr(287 downto 256) => xbar_to_m08_couplers_AWADDR(287 downto 256),
      m_axi_awaddr(255 downto 224) => xbar_to_m07_couplers_AWADDR(255 downto 224),
      m_axi_awaddr(223 downto 192) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      m_axi_awaddr(191 downto 160) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      m_axi_awaddr(159 downto 128) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      m_axi_awaddr(127 downto 96) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(29 downto 28) => xbar_to_m14_couplers_AWBURST(29 downto 28),
      m_axi_awburst(27 downto 26) => xbar_to_m13_couplers_AWBURST(27 downto 26),
      m_axi_awburst(25 downto 24) => xbar_to_m12_couplers_AWBURST(25 downto 24),
      m_axi_awburst(23 downto 22) => xbar_to_m11_couplers_AWBURST(23 downto 22),
      m_axi_awburst(21 downto 20) => xbar_to_m10_couplers_AWBURST(21 downto 20),
      m_axi_awburst(19 downto 18) => xbar_to_m09_couplers_AWBURST(19 downto 18),
      m_axi_awburst(17 downto 16) => xbar_to_m08_couplers_AWBURST(17 downto 16),
      m_axi_awburst(15 downto 14) => xbar_to_m07_couplers_AWBURST(15 downto 14),
      m_axi_awburst(13 downto 12) => xbar_to_m06_couplers_AWBURST(13 downto 12),
      m_axi_awburst(11 downto 10) => xbar_to_m05_couplers_AWBURST(11 downto 10),
      m_axi_awburst(9 downto 8) => xbar_to_m04_couplers_AWBURST(9 downto 8),
      m_axi_awburst(7 downto 6) => xbar_to_m03_couplers_AWBURST(7 downto 6),
      m_axi_awburst(5 downto 4) => xbar_to_m02_couplers_AWBURST(5 downto 4),
      m_axi_awburst(3 downto 2) => xbar_to_m01_couplers_AWBURST(3 downto 2),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(59 downto 56) => xbar_to_m14_couplers_AWCACHE(59 downto 56),
      m_axi_awcache(55 downto 52) => xbar_to_m13_couplers_AWCACHE(55 downto 52),
      m_axi_awcache(51 downto 48) => xbar_to_m12_couplers_AWCACHE(51 downto 48),
      m_axi_awcache(47 downto 44) => xbar_to_m11_couplers_AWCACHE(47 downto 44),
      m_axi_awcache(43 downto 40) => xbar_to_m10_couplers_AWCACHE(43 downto 40),
      m_axi_awcache(39 downto 36) => xbar_to_m09_couplers_AWCACHE(39 downto 36),
      m_axi_awcache(35 downto 32) => xbar_to_m08_couplers_AWCACHE(35 downto 32),
      m_axi_awcache(31 downto 28) => xbar_to_m07_couplers_AWCACHE(31 downto 28),
      m_axi_awcache(27 downto 24) => xbar_to_m06_couplers_AWCACHE(27 downto 24),
      m_axi_awcache(23 downto 20) => xbar_to_m05_couplers_AWCACHE(23 downto 20),
      m_axi_awcache(19 downto 16) => xbar_to_m04_couplers_AWCACHE(19 downto 16),
      m_axi_awcache(15 downto 12) => xbar_to_m03_couplers_AWCACHE(15 downto 12),
      m_axi_awcache(11 downto 8) => xbar_to_m02_couplers_AWCACHE(11 downto 8),
      m_axi_awcache(7 downto 4) => xbar_to_m01_couplers_AWCACHE(7 downto 4),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(119 downto 112) => xbar_to_m14_couplers_AWLEN(119 downto 112),
      m_axi_awlen(111 downto 104) => xbar_to_m13_couplers_AWLEN(111 downto 104),
      m_axi_awlen(103 downto 96) => xbar_to_m12_couplers_AWLEN(103 downto 96),
      m_axi_awlen(95 downto 88) => xbar_to_m11_couplers_AWLEN(95 downto 88),
      m_axi_awlen(87 downto 80) => xbar_to_m10_couplers_AWLEN(87 downto 80),
      m_axi_awlen(79 downto 72) => xbar_to_m09_couplers_AWLEN(79 downto 72),
      m_axi_awlen(71 downto 64) => xbar_to_m08_couplers_AWLEN(71 downto 64),
      m_axi_awlen(63 downto 56) => xbar_to_m07_couplers_AWLEN(63 downto 56),
      m_axi_awlen(55 downto 48) => xbar_to_m06_couplers_AWLEN(55 downto 48),
      m_axi_awlen(47 downto 40) => xbar_to_m05_couplers_AWLEN(47 downto 40),
      m_axi_awlen(39 downto 32) => xbar_to_m04_couplers_AWLEN(39 downto 32),
      m_axi_awlen(31 downto 24) => xbar_to_m03_couplers_AWLEN(31 downto 24),
      m_axi_awlen(23 downto 16) => xbar_to_m02_couplers_AWLEN(23 downto 16),
      m_axi_awlen(15 downto 8) => xbar_to_m01_couplers_AWLEN(15 downto 8),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(14) => xbar_to_m14_couplers_AWLOCK(14),
      m_axi_awlock(13) => xbar_to_m13_couplers_AWLOCK(13),
      m_axi_awlock(12) => xbar_to_m12_couplers_AWLOCK(12),
      m_axi_awlock(11) => xbar_to_m11_couplers_AWLOCK(11),
      m_axi_awlock(10) => xbar_to_m10_couplers_AWLOCK(10),
      m_axi_awlock(9) => xbar_to_m09_couplers_AWLOCK(9),
      m_axi_awlock(8) => xbar_to_m08_couplers_AWLOCK(8),
      m_axi_awlock(7) => xbar_to_m07_couplers_AWLOCK(7),
      m_axi_awlock(6) => xbar_to_m06_couplers_AWLOCK(6),
      m_axi_awlock(5) => xbar_to_m05_couplers_AWLOCK(5),
      m_axi_awlock(4) => xbar_to_m04_couplers_AWLOCK(4),
      m_axi_awlock(3) => xbar_to_m03_couplers_AWLOCK(3),
      m_axi_awlock(2) => xbar_to_m02_couplers_AWLOCK(2),
      m_axi_awlock(1) => xbar_to_m01_couplers_AWLOCK(1),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(44 downto 42) => xbar_to_m14_couplers_AWPROT(44 downto 42),
      m_axi_awprot(41 downto 39) => xbar_to_m13_couplers_AWPROT(41 downto 39),
      m_axi_awprot(38 downto 36) => xbar_to_m12_couplers_AWPROT(38 downto 36),
      m_axi_awprot(35 downto 33) => xbar_to_m11_couplers_AWPROT(35 downto 33),
      m_axi_awprot(32 downto 30) => xbar_to_m10_couplers_AWPROT(32 downto 30),
      m_axi_awprot(29 downto 27) => xbar_to_m09_couplers_AWPROT(29 downto 27),
      m_axi_awprot(26 downto 24) => xbar_to_m08_couplers_AWPROT(26 downto 24),
      m_axi_awprot(23 downto 21) => xbar_to_m07_couplers_AWPROT(23 downto 21),
      m_axi_awprot(20 downto 18) => xbar_to_m06_couplers_AWPROT(20 downto 18),
      m_axi_awprot(17 downto 15) => xbar_to_m05_couplers_AWPROT(17 downto 15),
      m_axi_awprot(14 downto 12) => xbar_to_m04_couplers_AWPROT(14 downto 12),
      m_axi_awprot(11 downto 9) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      m_axi_awprot(8 downto 6) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      m_axi_awprot(5 downto 3) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(59 downto 56) => xbar_to_m14_couplers_AWQOS(59 downto 56),
      m_axi_awqos(55 downto 52) => xbar_to_m13_couplers_AWQOS(55 downto 52),
      m_axi_awqos(51 downto 48) => xbar_to_m12_couplers_AWQOS(51 downto 48),
      m_axi_awqos(47 downto 44) => xbar_to_m11_couplers_AWQOS(47 downto 44),
      m_axi_awqos(43 downto 40) => xbar_to_m10_couplers_AWQOS(43 downto 40),
      m_axi_awqos(39 downto 36) => xbar_to_m09_couplers_AWQOS(39 downto 36),
      m_axi_awqos(35 downto 32) => xbar_to_m08_couplers_AWQOS(35 downto 32),
      m_axi_awqos(31 downto 28) => xbar_to_m07_couplers_AWQOS(31 downto 28),
      m_axi_awqos(27 downto 24) => xbar_to_m06_couplers_AWQOS(27 downto 24),
      m_axi_awqos(23 downto 20) => xbar_to_m05_couplers_AWQOS(23 downto 20),
      m_axi_awqos(19 downto 16) => xbar_to_m04_couplers_AWQOS(19 downto 16),
      m_axi_awqos(15 downto 12) => xbar_to_m03_couplers_AWQOS(15 downto 12),
      m_axi_awqos(11 downto 8) => xbar_to_m02_couplers_AWQOS(11 downto 8),
      m_axi_awqos(7 downto 4) => NLW_xbar_m_axi_awqos_UNCONNECTED(7 downto 4),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready(14) => xbar_to_m14_couplers_AWREADY,
      m_axi_awready(13) => xbar_to_m13_couplers_AWREADY,
      m_axi_awready(12) => xbar_to_m12_couplers_AWREADY,
      m_axi_awready(11) => xbar_to_m11_couplers_AWREADY,
      m_axi_awready(10) => xbar_to_m10_couplers_AWREADY,
      m_axi_awready(9) => xbar_to_m09_couplers_AWREADY,
      m_axi_awready(8) => xbar_to_m08_couplers_AWREADY,
      m_axi_awready(7) => xbar_to_m07_couplers_AWREADY,
      m_axi_awready(6) => xbar_to_m06_couplers_AWREADY,
      m_axi_awready(5) => xbar_to_m05_couplers_AWREADY,
      m_axi_awready(4) => xbar_to_m04_couplers_AWREADY,
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY,
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY,
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY(0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(59 downto 56) => xbar_to_m14_couplers_AWREGION(59 downto 56),
      m_axi_awregion(55 downto 52) => xbar_to_m13_couplers_AWREGION(55 downto 52),
      m_axi_awregion(51 downto 48) => xbar_to_m12_couplers_AWREGION(51 downto 48),
      m_axi_awregion(47 downto 44) => xbar_to_m11_couplers_AWREGION(47 downto 44),
      m_axi_awregion(43 downto 40) => xbar_to_m10_couplers_AWREGION(43 downto 40),
      m_axi_awregion(39 downto 36) => xbar_to_m09_couplers_AWREGION(39 downto 36),
      m_axi_awregion(35 downto 32) => xbar_to_m08_couplers_AWREGION(35 downto 32),
      m_axi_awregion(31 downto 28) => xbar_to_m07_couplers_AWREGION(31 downto 28),
      m_axi_awregion(27 downto 24) => xbar_to_m06_couplers_AWREGION(27 downto 24),
      m_axi_awregion(23 downto 20) => xbar_to_m05_couplers_AWREGION(23 downto 20),
      m_axi_awregion(19 downto 16) => xbar_to_m04_couplers_AWREGION(19 downto 16),
      m_axi_awregion(15 downto 12) => xbar_to_m03_couplers_AWREGION(15 downto 12),
      m_axi_awregion(11 downto 8) => xbar_to_m02_couplers_AWREGION(11 downto 8),
      m_axi_awregion(7 downto 4) => NLW_xbar_m_axi_awregion_UNCONNECTED(7 downto 4),
      m_axi_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(44 downto 42) => xbar_to_m14_couplers_AWSIZE(44 downto 42),
      m_axi_awsize(41 downto 39) => xbar_to_m13_couplers_AWSIZE(41 downto 39),
      m_axi_awsize(38 downto 36) => xbar_to_m12_couplers_AWSIZE(38 downto 36),
      m_axi_awsize(35 downto 33) => xbar_to_m11_couplers_AWSIZE(35 downto 33),
      m_axi_awsize(32 downto 30) => xbar_to_m10_couplers_AWSIZE(32 downto 30),
      m_axi_awsize(29 downto 27) => xbar_to_m09_couplers_AWSIZE(29 downto 27),
      m_axi_awsize(26 downto 24) => xbar_to_m08_couplers_AWSIZE(26 downto 24),
      m_axi_awsize(23 downto 21) => xbar_to_m07_couplers_AWSIZE(23 downto 21),
      m_axi_awsize(20 downto 18) => xbar_to_m06_couplers_AWSIZE(20 downto 18),
      m_axi_awsize(17 downto 15) => xbar_to_m05_couplers_AWSIZE(17 downto 15),
      m_axi_awsize(14 downto 12) => xbar_to_m04_couplers_AWSIZE(14 downto 12),
      m_axi_awsize(11 downto 9) => xbar_to_m03_couplers_AWSIZE(11 downto 9),
      m_axi_awsize(8 downto 6) => xbar_to_m02_couplers_AWSIZE(8 downto 6),
      m_axi_awsize(5 downto 3) => xbar_to_m01_couplers_AWSIZE(5 downto 3),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid(14) => xbar_to_m14_couplers_AWVALID(14),
      m_axi_awvalid(13) => xbar_to_m13_couplers_AWVALID(13),
      m_axi_awvalid(12) => xbar_to_m12_couplers_AWVALID(12),
      m_axi_awvalid(11) => xbar_to_m11_couplers_AWVALID(11),
      m_axi_awvalid(10) => xbar_to_m10_couplers_AWVALID(10),
      m_axi_awvalid(9) => xbar_to_m09_couplers_AWVALID(9),
      m_axi_awvalid(8) => xbar_to_m08_couplers_AWVALID(8),
      m_axi_awvalid(7) => xbar_to_m07_couplers_AWVALID(7),
      m_axi_awvalid(6) => xbar_to_m06_couplers_AWVALID(6),
      m_axi_awvalid(5) => xbar_to_m05_couplers_AWVALID(5),
      m_axi_awvalid(4) => xbar_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(14) => xbar_to_m14_couplers_BREADY(14),
      m_axi_bready(13) => xbar_to_m13_couplers_BREADY(13),
      m_axi_bready(12) => xbar_to_m12_couplers_BREADY(12),
      m_axi_bready(11) => xbar_to_m11_couplers_BREADY(11),
      m_axi_bready(10) => xbar_to_m10_couplers_BREADY(10),
      m_axi_bready(9) => xbar_to_m09_couplers_BREADY(9),
      m_axi_bready(8) => xbar_to_m08_couplers_BREADY(8),
      m_axi_bready(7) => xbar_to_m07_couplers_BREADY(7),
      m_axi_bready(6) => xbar_to_m06_couplers_BREADY(6),
      m_axi_bready(5) => xbar_to_m05_couplers_BREADY(5),
      m_axi_bready(4) => xbar_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(29) => xbar_to_m14_couplers_BRESP,
      m_axi_bresp(28) => xbar_to_m14_couplers_BRESP,
      m_axi_bresp(27) => xbar_to_m13_couplers_BRESP,
      m_axi_bresp(26) => xbar_to_m13_couplers_BRESP,
      m_axi_bresp(25) => xbar_to_m12_couplers_BRESP,
      m_axi_bresp(24) => xbar_to_m12_couplers_BRESP,
      m_axi_bresp(23) => xbar_to_m11_couplers_BRESP,
      m_axi_bresp(22) => xbar_to_m11_couplers_BRESP,
      m_axi_bresp(21) => xbar_to_m10_couplers_BRESP,
      m_axi_bresp(20) => xbar_to_m10_couplers_BRESP,
      m_axi_bresp(19) => xbar_to_m09_couplers_BRESP,
      m_axi_bresp(18) => xbar_to_m09_couplers_BRESP,
      m_axi_bresp(17) => xbar_to_m08_couplers_BRESP,
      m_axi_bresp(16) => xbar_to_m08_couplers_BRESP,
      m_axi_bresp(15) => xbar_to_m07_couplers_BRESP,
      m_axi_bresp(14) => xbar_to_m07_couplers_BRESP,
      m_axi_bresp(13 downto 12) => xbar_to_m06_couplers_BRESP(1 downto 0),
      m_axi_bresp(11 downto 10) => xbar_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bresp(9 downto 8) => xbar_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(14) => xbar_to_m14_couplers_BVALID,
      m_axi_bvalid(13) => xbar_to_m13_couplers_BVALID,
      m_axi_bvalid(12) => xbar_to_m12_couplers_BVALID,
      m_axi_bvalid(11) => xbar_to_m11_couplers_BVALID,
      m_axi_bvalid(10) => xbar_to_m10_couplers_BVALID,
      m_axi_bvalid(9) => xbar_to_m09_couplers_BVALID,
      m_axi_bvalid(8) => xbar_to_m08_couplers_BVALID,
      m_axi_bvalid(7) => xbar_to_m07_couplers_BVALID,
      m_axi_bvalid(6) => xbar_to_m06_couplers_BVALID,
      m_axi_bvalid(5) => xbar_to_m05_couplers_BVALID,
      m_axi_bvalid(4) => xbar_to_m04_couplers_BVALID,
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID,
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID,
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID(0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(479) => xbar_to_m14_couplers_RDATA,
      m_axi_rdata(478) => xbar_to_m14_couplers_RDATA,
      m_axi_rdata(477) => xbar_to_m14_couplers_RDATA,
      m_axi_rdata(476) => xbar_to_m14_couplers_RDATA,
      m_axi_rdata(475) => xbar_to_m14_couplers_RDATA,
      m_axi_rdata(474) => xbar_to_m14_couplers_RDATA,
      m_axi_rdata(473) => xbar_to_m14_couplers_RDATA,
      m_axi_rdata(472) => xbar_to_m14_couplers_RDATA,
      m_axi_rdata(471) => xbar_to_m14_couplers_RDATA,
      m_axi_rdata(470) => xbar_to_m14_couplers_RDATA,
      m_axi_rdata(469) => xbar_to_m14_couplers_RDATA,
      m_axi_rdata(468) => xbar_to_m14_couplers_RDATA,
      m_axi_rdata(467) => xbar_to_m14_couplers_RDATA,
      m_axi_rdata(466) => xbar_to_m14_couplers_RDATA,
      m_axi_rdata(465) => xbar_to_m14_couplers_RDATA,
      m_axi_rdata(464) => xbar_to_m14_couplers_RDATA,
      m_axi_rdata(463) => xbar_to_m14_couplers_RDATA,
      m_axi_rdata(462) => xbar_to_m14_couplers_RDATA,
      m_axi_rdata(461) => xbar_to_m14_couplers_RDATA,
      m_axi_rdata(460) => xbar_to_m14_couplers_RDATA,
      m_axi_rdata(459) => xbar_to_m14_couplers_RDATA,
      m_axi_rdata(458) => xbar_to_m14_couplers_RDATA,
      m_axi_rdata(457) => xbar_to_m14_couplers_RDATA,
      m_axi_rdata(456) => xbar_to_m14_couplers_RDATA,
      m_axi_rdata(455) => xbar_to_m14_couplers_RDATA,
      m_axi_rdata(454) => xbar_to_m14_couplers_RDATA,
      m_axi_rdata(453) => xbar_to_m14_couplers_RDATA,
      m_axi_rdata(452) => xbar_to_m14_couplers_RDATA,
      m_axi_rdata(451) => xbar_to_m14_couplers_RDATA,
      m_axi_rdata(450) => xbar_to_m14_couplers_RDATA,
      m_axi_rdata(449) => xbar_to_m14_couplers_RDATA,
      m_axi_rdata(448) => xbar_to_m14_couplers_RDATA,
      m_axi_rdata(447) => xbar_to_m13_couplers_RDATA,
      m_axi_rdata(446) => xbar_to_m13_couplers_RDATA,
      m_axi_rdata(445) => xbar_to_m13_couplers_RDATA,
      m_axi_rdata(444) => xbar_to_m13_couplers_RDATA,
      m_axi_rdata(443) => xbar_to_m13_couplers_RDATA,
      m_axi_rdata(442) => xbar_to_m13_couplers_RDATA,
      m_axi_rdata(441) => xbar_to_m13_couplers_RDATA,
      m_axi_rdata(440) => xbar_to_m13_couplers_RDATA,
      m_axi_rdata(439) => xbar_to_m13_couplers_RDATA,
      m_axi_rdata(438) => xbar_to_m13_couplers_RDATA,
      m_axi_rdata(437) => xbar_to_m13_couplers_RDATA,
      m_axi_rdata(436) => xbar_to_m13_couplers_RDATA,
      m_axi_rdata(435) => xbar_to_m13_couplers_RDATA,
      m_axi_rdata(434) => xbar_to_m13_couplers_RDATA,
      m_axi_rdata(433) => xbar_to_m13_couplers_RDATA,
      m_axi_rdata(432) => xbar_to_m13_couplers_RDATA,
      m_axi_rdata(431) => xbar_to_m13_couplers_RDATA,
      m_axi_rdata(430) => xbar_to_m13_couplers_RDATA,
      m_axi_rdata(429) => xbar_to_m13_couplers_RDATA,
      m_axi_rdata(428) => xbar_to_m13_couplers_RDATA,
      m_axi_rdata(427) => xbar_to_m13_couplers_RDATA,
      m_axi_rdata(426) => xbar_to_m13_couplers_RDATA,
      m_axi_rdata(425) => xbar_to_m13_couplers_RDATA,
      m_axi_rdata(424) => xbar_to_m13_couplers_RDATA,
      m_axi_rdata(423) => xbar_to_m13_couplers_RDATA,
      m_axi_rdata(422) => xbar_to_m13_couplers_RDATA,
      m_axi_rdata(421) => xbar_to_m13_couplers_RDATA,
      m_axi_rdata(420) => xbar_to_m13_couplers_RDATA,
      m_axi_rdata(419) => xbar_to_m13_couplers_RDATA,
      m_axi_rdata(418) => xbar_to_m13_couplers_RDATA,
      m_axi_rdata(417) => xbar_to_m13_couplers_RDATA,
      m_axi_rdata(416) => xbar_to_m13_couplers_RDATA,
      m_axi_rdata(415) => xbar_to_m12_couplers_RDATA,
      m_axi_rdata(414) => xbar_to_m12_couplers_RDATA,
      m_axi_rdata(413) => xbar_to_m12_couplers_RDATA,
      m_axi_rdata(412) => xbar_to_m12_couplers_RDATA,
      m_axi_rdata(411) => xbar_to_m12_couplers_RDATA,
      m_axi_rdata(410) => xbar_to_m12_couplers_RDATA,
      m_axi_rdata(409) => xbar_to_m12_couplers_RDATA,
      m_axi_rdata(408) => xbar_to_m12_couplers_RDATA,
      m_axi_rdata(407) => xbar_to_m12_couplers_RDATA,
      m_axi_rdata(406) => xbar_to_m12_couplers_RDATA,
      m_axi_rdata(405) => xbar_to_m12_couplers_RDATA,
      m_axi_rdata(404) => xbar_to_m12_couplers_RDATA,
      m_axi_rdata(403) => xbar_to_m12_couplers_RDATA,
      m_axi_rdata(402) => xbar_to_m12_couplers_RDATA,
      m_axi_rdata(401) => xbar_to_m12_couplers_RDATA,
      m_axi_rdata(400) => xbar_to_m12_couplers_RDATA,
      m_axi_rdata(399) => xbar_to_m12_couplers_RDATA,
      m_axi_rdata(398) => xbar_to_m12_couplers_RDATA,
      m_axi_rdata(397) => xbar_to_m12_couplers_RDATA,
      m_axi_rdata(396) => xbar_to_m12_couplers_RDATA,
      m_axi_rdata(395) => xbar_to_m12_couplers_RDATA,
      m_axi_rdata(394) => xbar_to_m12_couplers_RDATA,
      m_axi_rdata(393) => xbar_to_m12_couplers_RDATA,
      m_axi_rdata(392) => xbar_to_m12_couplers_RDATA,
      m_axi_rdata(391) => xbar_to_m12_couplers_RDATA,
      m_axi_rdata(390) => xbar_to_m12_couplers_RDATA,
      m_axi_rdata(389) => xbar_to_m12_couplers_RDATA,
      m_axi_rdata(388) => xbar_to_m12_couplers_RDATA,
      m_axi_rdata(387) => xbar_to_m12_couplers_RDATA,
      m_axi_rdata(386) => xbar_to_m12_couplers_RDATA,
      m_axi_rdata(385) => xbar_to_m12_couplers_RDATA,
      m_axi_rdata(384) => xbar_to_m12_couplers_RDATA,
      m_axi_rdata(383) => xbar_to_m11_couplers_RDATA,
      m_axi_rdata(382) => xbar_to_m11_couplers_RDATA,
      m_axi_rdata(381) => xbar_to_m11_couplers_RDATA,
      m_axi_rdata(380) => xbar_to_m11_couplers_RDATA,
      m_axi_rdata(379) => xbar_to_m11_couplers_RDATA,
      m_axi_rdata(378) => xbar_to_m11_couplers_RDATA,
      m_axi_rdata(377) => xbar_to_m11_couplers_RDATA,
      m_axi_rdata(376) => xbar_to_m11_couplers_RDATA,
      m_axi_rdata(375) => xbar_to_m11_couplers_RDATA,
      m_axi_rdata(374) => xbar_to_m11_couplers_RDATA,
      m_axi_rdata(373) => xbar_to_m11_couplers_RDATA,
      m_axi_rdata(372) => xbar_to_m11_couplers_RDATA,
      m_axi_rdata(371) => xbar_to_m11_couplers_RDATA,
      m_axi_rdata(370) => xbar_to_m11_couplers_RDATA,
      m_axi_rdata(369) => xbar_to_m11_couplers_RDATA,
      m_axi_rdata(368) => xbar_to_m11_couplers_RDATA,
      m_axi_rdata(367) => xbar_to_m11_couplers_RDATA,
      m_axi_rdata(366) => xbar_to_m11_couplers_RDATA,
      m_axi_rdata(365) => xbar_to_m11_couplers_RDATA,
      m_axi_rdata(364) => xbar_to_m11_couplers_RDATA,
      m_axi_rdata(363) => xbar_to_m11_couplers_RDATA,
      m_axi_rdata(362) => xbar_to_m11_couplers_RDATA,
      m_axi_rdata(361) => xbar_to_m11_couplers_RDATA,
      m_axi_rdata(360) => xbar_to_m11_couplers_RDATA,
      m_axi_rdata(359) => xbar_to_m11_couplers_RDATA,
      m_axi_rdata(358) => xbar_to_m11_couplers_RDATA,
      m_axi_rdata(357) => xbar_to_m11_couplers_RDATA,
      m_axi_rdata(356) => xbar_to_m11_couplers_RDATA,
      m_axi_rdata(355) => xbar_to_m11_couplers_RDATA,
      m_axi_rdata(354) => xbar_to_m11_couplers_RDATA,
      m_axi_rdata(353) => xbar_to_m11_couplers_RDATA,
      m_axi_rdata(352) => xbar_to_m11_couplers_RDATA,
      m_axi_rdata(351) => xbar_to_m10_couplers_RDATA,
      m_axi_rdata(350) => xbar_to_m10_couplers_RDATA,
      m_axi_rdata(349) => xbar_to_m10_couplers_RDATA,
      m_axi_rdata(348) => xbar_to_m10_couplers_RDATA,
      m_axi_rdata(347) => xbar_to_m10_couplers_RDATA,
      m_axi_rdata(346) => xbar_to_m10_couplers_RDATA,
      m_axi_rdata(345) => xbar_to_m10_couplers_RDATA,
      m_axi_rdata(344) => xbar_to_m10_couplers_RDATA,
      m_axi_rdata(343) => xbar_to_m10_couplers_RDATA,
      m_axi_rdata(342) => xbar_to_m10_couplers_RDATA,
      m_axi_rdata(341) => xbar_to_m10_couplers_RDATA,
      m_axi_rdata(340) => xbar_to_m10_couplers_RDATA,
      m_axi_rdata(339) => xbar_to_m10_couplers_RDATA,
      m_axi_rdata(338) => xbar_to_m10_couplers_RDATA,
      m_axi_rdata(337) => xbar_to_m10_couplers_RDATA,
      m_axi_rdata(336) => xbar_to_m10_couplers_RDATA,
      m_axi_rdata(335) => xbar_to_m10_couplers_RDATA,
      m_axi_rdata(334) => xbar_to_m10_couplers_RDATA,
      m_axi_rdata(333) => xbar_to_m10_couplers_RDATA,
      m_axi_rdata(332) => xbar_to_m10_couplers_RDATA,
      m_axi_rdata(331) => xbar_to_m10_couplers_RDATA,
      m_axi_rdata(330) => xbar_to_m10_couplers_RDATA,
      m_axi_rdata(329) => xbar_to_m10_couplers_RDATA,
      m_axi_rdata(328) => xbar_to_m10_couplers_RDATA,
      m_axi_rdata(327) => xbar_to_m10_couplers_RDATA,
      m_axi_rdata(326) => xbar_to_m10_couplers_RDATA,
      m_axi_rdata(325) => xbar_to_m10_couplers_RDATA,
      m_axi_rdata(324) => xbar_to_m10_couplers_RDATA,
      m_axi_rdata(323) => xbar_to_m10_couplers_RDATA,
      m_axi_rdata(322) => xbar_to_m10_couplers_RDATA,
      m_axi_rdata(321) => xbar_to_m10_couplers_RDATA,
      m_axi_rdata(320) => xbar_to_m10_couplers_RDATA,
      m_axi_rdata(319) => xbar_to_m09_couplers_RDATA,
      m_axi_rdata(318) => xbar_to_m09_couplers_RDATA,
      m_axi_rdata(317) => xbar_to_m09_couplers_RDATA,
      m_axi_rdata(316) => xbar_to_m09_couplers_RDATA,
      m_axi_rdata(315) => xbar_to_m09_couplers_RDATA,
      m_axi_rdata(314) => xbar_to_m09_couplers_RDATA,
      m_axi_rdata(313) => xbar_to_m09_couplers_RDATA,
      m_axi_rdata(312) => xbar_to_m09_couplers_RDATA,
      m_axi_rdata(311) => xbar_to_m09_couplers_RDATA,
      m_axi_rdata(310) => xbar_to_m09_couplers_RDATA,
      m_axi_rdata(309) => xbar_to_m09_couplers_RDATA,
      m_axi_rdata(308) => xbar_to_m09_couplers_RDATA,
      m_axi_rdata(307) => xbar_to_m09_couplers_RDATA,
      m_axi_rdata(306) => xbar_to_m09_couplers_RDATA,
      m_axi_rdata(305) => xbar_to_m09_couplers_RDATA,
      m_axi_rdata(304) => xbar_to_m09_couplers_RDATA,
      m_axi_rdata(303) => xbar_to_m09_couplers_RDATA,
      m_axi_rdata(302) => xbar_to_m09_couplers_RDATA,
      m_axi_rdata(301) => xbar_to_m09_couplers_RDATA,
      m_axi_rdata(300) => xbar_to_m09_couplers_RDATA,
      m_axi_rdata(299) => xbar_to_m09_couplers_RDATA,
      m_axi_rdata(298) => xbar_to_m09_couplers_RDATA,
      m_axi_rdata(297) => xbar_to_m09_couplers_RDATA,
      m_axi_rdata(296) => xbar_to_m09_couplers_RDATA,
      m_axi_rdata(295) => xbar_to_m09_couplers_RDATA,
      m_axi_rdata(294) => xbar_to_m09_couplers_RDATA,
      m_axi_rdata(293) => xbar_to_m09_couplers_RDATA,
      m_axi_rdata(292) => xbar_to_m09_couplers_RDATA,
      m_axi_rdata(291) => xbar_to_m09_couplers_RDATA,
      m_axi_rdata(290) => xbar_to_m09_couplers_RDATA,
      m_axi_rdata(289) => xbar_to_m09_couplers_RDATA,
      m_axi_rdata(288) => xbar_to_m09_couplers_RDATA,
      m_axi_rdata(287) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(286) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(285) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(284) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(283) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(282) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(281) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(280) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(279) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(278) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(277) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(276) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(275) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(274) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(273) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(272) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(271) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(270) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(269) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(268) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(267) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(266) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(265) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(264) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(263) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(262) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(261) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(260) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(259) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(258) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(257) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(256) => xbar_to_m08_couplers_RDATA,
      m_axi_rdata(255) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(254) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(253) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(252) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(251) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(250) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(249) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(248) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(247) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(246) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(245) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(244) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(243) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(242) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(241) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(240) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(239) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(238) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(237) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(236) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(235) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(234) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(233) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(232) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(231) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(230) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(229) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(228) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(227) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(226) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(225) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(224) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(223 downto 192) => xbar_to_m06_couplers_RDATA(31 downto 0),
      m_axi_rdata(191 downto 160) => xbar_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rdata(159 downto 128) => xbar_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rdata(127 downto 96) => xbar_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rlast(14) => xbar_to_m14_couplers_RLAST,
      m_axi_rlast(13) => xbar_to_m13_couplers_RLAST,
      m_axi_rlast(12) => xbar_to_m12_couplers_RLAST,
      m_axi_rlast(11) => xbar_to_m11_couplers_RLAST,
      m_axi_rlast(10) => xbar_to_m10_couplers_RLAST,
      m_axi_rlast(9) => xbar_to_m09_couplers_RLAST,
      m_axi_rlast(8) => xbar_to_m08_couplers_RLAST,
      m_axi_rlast(7) => xbar_to_m07_couplers_RLAST,
      m_axi_rlast(6) => xbar_to_m06_couplers_RLAST,
      m_axi_rlast(5) => xbar_to_m05_couplers_RLAST,
      m_axi_rlast(4) => xbar_to_m04_couplers_RLAST,
      m_axi_rlast(3) => xbar_to_m03_couplers_RLAST,
      m_axi_rlast(2) => xbar_to_m02_couplers_RLAST,
      m_axi_rlast(1) => xbar_to_m01_couplers_RLAST(0),
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(14) => xbar_to_m14_couplers_RREADY(14),
      m_axi_rready(13) => xbar_to_m13_couplers_RREADY(13),
      m_axi_rready(12) => xbar_to_m12_couplers_RREADY(12),
      m_axi_rready(11) => xbar_to_m11_couplers_RREADY(11),
      m_axi_rready(10) => xbar_to_m10_couplers_RREADY(10),
      m_axi_rready(9) => xbar_to_m09_couplers_RREADY(9),
      m_axi_rready(8) => xbar_to_m08_couplers_RREADY(8),
      m_axi_rready(7) => xbar_to_m07_couplers_RREADY(7),
      m_axi_rready(6) => xbar_to_m06_couplers_RREADY(6),
      m_axi_rready(5) => xbar_to_m05_couplers_RREADY(5),
      m_axi_rready(4) => xbar_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(29) => xbar_to_m14_couplers_RRESP,
      m_axi_rresp(28) => xbar_to_m14_couplers_RRESP,
      m_axi_rresp(27) => xbar_to_m13_couplers_RRESP,
      m_axi_rresp(26) => xbar_to_m13_couplers_RRESP,
      m_axi_rresp(25) => xbar_to_m12_couplers_RRESP,
      m_axi_rresp(24) => xbar_to_m12_couplers_RRESP,
      m_axi_rresp(23) => xbar_to_m11_couplers_RRESP,
      m_axi_rresp(22) => xbar_to_m11_couplers_RRESP,
      m_axi_rresp(21) => xbar_to_m10_couplers_RRESP,
      m_axi_rresp(20) => xbar_to_m10_couplers_RRESP,
      m_axi_rresp(19) => xbar_to_m09_couplers_RRESP,
      m_axi_rresp(18) => xbar_to_m09_couplers_RRESP,
      m_axi_rresp(17) => xbar_to_m08_couplers_RRESP,
      m_axi_rresp(16) => xbar_to_m08_couplers_RRESP,
      m_axi_rresp(15) => xbar_to_m07_couplers_RRESP,
      m_axi_rresp(14) => xbar_to_m07_couplers_RRESP,
      m_axi_rresp(13 downto 12) => xbar_to_m06_couplers_RRESP(1 downto 0),
      m_axi_rresp(11 downto 10) => xbar_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rresp(9 downto 8) => xbar_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(14) => xbar_to_m14_couplers_RVALID,
      m_axi_rvalid(13) => xbar_to_m13_couplers_RVALID,
      m_axi_rvalid(12) => xbar_to_m12_couplers_RVALID,
      m_axi_rvalid(11) => xbar_to_m11_couplers_RVALID,
      m_axi_rvalid(10) => xbar_to_m10_couplers_RVALID,
      m_axi_rvalid(9) => xbar_to_m09_couplers_RVALID,
      m_axi_rvalid(8) => xbar_to_m08_couplers_RVALID,
      m_axi_rvalid(7) => xbar_to_m07_couplers_RVALID,
      m_axi_rvalid(6) => xbar_to_m06_couplers_RVALID,
      m_axi_rvalid(5) => xbar_to_m05_couplers_RVALID,
      m_axi_rvalid(4) => xbar_to_m04_couplers_RVALID,
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID,
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID,
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID(0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(479 downto 448) => xbar_to_m14_couplers_WDATA(479 downto 448),
      m_axi_wdata(447 downto 416) => xbar_to_m13_couplers_WDATA(447 downto 416),
      m_axi_wdata(415 downto 384) => xbar_to_m12_couplers_WDATA(415 downto 384),
      m_axi_wdata(383 downto 352) => xbar_to_m11_couplers_WDATA(383 downto 352),
      m_axi_wdata(351 downto 320) => xbar_to_m10_couplers_WDATA(351 downto 320),
      m_axi_wdata(319 downto 288) => xbar_to_m09_couplers_WDATA(319 downto 288),
      m_axi_wdata(287 downto 256) => xbar_to_m08_couplers_WDATA(287 downto 256),
      m_axi_wdata(255 downto 224) => xbar_to_m07_couplers_WDATA(255 downto 224),
      m_axi_wdata(223 downto 192) => xbar_to_m06_couplers_WDATA(223 downto 192),
      m_axi_wdata(191 downto 160) => xbar_to_m05_couplers_WDATA(191 downto 160),
      m_axi_wdata(159 downto 128) => xbar_to_m04_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wlast(14) => xbar_to_m14_couplers_WLAST(14),
      m_axi_wlast(13) => xbar_to_m13_couplers_WLAST(13),
      m_axi_wlast(12) => xbar_to_m12_couplers_WLAST(12),
      m_axi_wlast(11) => xbar_to_m11_couplers_WLAST(11),
      m_axi_wlast(10) => xbar_to_m10_couplers_WLAST(10),
      m_axi_wlast(9) => xbar_to_m09_couplers_WLAST(9),
      m_axi_wlast(8) => xbar_to_m08_couplers_WLAST(8),
      m_axi_wlast(7) => xbar_to_m07_couplers_WLAST(7),
      m_axi_wlast(6) => xbar_to_m06_couplers_WLAST(6),
      m_axi_wlast(5) => xbar_to_m05_couplers_WLAST(5),
      m_axi_wlast(4) => xbar_to_m04_couplers_WLAST(4),
      m_axi_wlast(3) => xbar_to_m03_couplers_WLAST(3),
      m_axi_wlast(2) => xbar_to_m02_couplers_WLAST(2),
      m_axi_wlast(1) => xbar_to_m01_couplers_WLAST(1),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(14) => xbar_to_m14_couplers_WREADY,
      m_axi_wready(13) => xbar_to_m13_couplers_WREADY,
      m_axi_wready(12) => xbar_to_m12_couplers_WREADY,
      m_axi_wready(11) => xbar_to_m11_couplers_WREADY,
      m_axi_wready(10) => xbar_to_m10_couplers_WREADY,
      m_axi_wready(9) => xbar_to_m09_couplers_WREADY,
      m_axi_wready(8) => xbar_to_m08_couplers_WREADY,
      m_axi_wready(7) => xbar_to_m07_couplers_WREADY,
      m_axi_wready(6) => xbar_to_m06_couplers_WREADY,
      m_axi_wready(5) => xbar_to_m05_couplers_WREADY,
      m_axi_wready(4) => xbar_to_m04_couplers_WREADY,
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY,
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY,
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(59 downto 56) => xbar_to_m14_couplers_WSTRB(59 downto 56),
      m_axi_wstrb(55 downto 52) => xbar_to_m13_couplers_WSTRB(55 downto 52),
      m_axi_wstrb(51 downto 48) => xbar_to_m12_couplers_WSTRB(51 downto 48),
      m_axi_wstrb(47 downto 44) => xbar_to_m11_couplers_WSTRB(47 downto 44),
      m_axi_wstrb(43 downto 40) => xbar_to_m10_couplers_WSTRB(43 downto 40),
      m_axi_wstrb(39 downto 36) => xbar_to_m09_couplers_WSTRB(39 downto 36),
      m_axi_wstrb(35 downto 32) => xbar_to_m08_couplers_WSTRB(35 downto 32),
      m_axi_wstrb(31 downto 28) => xbar_to_m07_couplers_WSTRB(31 downto 28),
      m_axi_wstrb(27 downto 24) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      m_axi_wstrb(23 downto 20) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      m_axi_wstrb(19 downto 16) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      m_axi_wstrb(15 downto 12) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(14) => xbar_to_m14_couplers_WVALID(14),
      m_axi_wvalid(13) => xbar_to_m13_couplers_WVALID(13),
      m_axi_wvalid(12) => xbar_to_m12_couplers_WVALID(12),
      m_axi_wvalid(11) => xbar_to_m11_couplers_WVALID(11),
      m_axi_wvalid(10) => xbar_to_m10_couplers_WVALID(10),
      m_axi_wvalid(9) => xbar_to_m09_couplers_WVALID(9),
      m_axi_wvalid(8) => xbar_to_m08_couplers_WVALID(8),
      m_axi_wvalid(7) => xbar_to_m07_couplers_WVALID(7),
      m_axi_wvalid(6) => xbar_to_m06_couplers_WVALID(6),
      m_axi_wvalid(5) => xbar_to_m05_couplers_WVALID(5),
      m_axi_wvalid(4) => xbar_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wlast(0) => s00_couplers_to_xbar_WLAST,
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity v7_bd is
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
    clk_out2_50mhz : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of v7_bd : entity is "v7_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=v7_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=36,numReposBlks=19,numNonXlnxBlks=0,numHierBlks=17,maxHierDepth=0,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of v7_bd : entity is "v7_bd.hwdef";
end v7_bd;

architecture STRUCTURE of v7_bd is
  component v7_bd_axi_bram_ctrl_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component v7_bd_axi_bram_ctrl_0_0;
  component v7_bd_axi_bram_ctrl_drp_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component v7_bd_axi_bram_ctrl_drp_0;
  component v7_bd_axi_bram_ctrl_gth_reg_file_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 16 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component v7_bd_axi_bram_ctrl_gth_reg_file_0;
  component v7_bd_axi_bram_ctrl_reg_file_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 16 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component v7_bd_axi_bram_ctrl_reg_file_0;
  component v7_bd_axi_bram_ctrl_rx_ram_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 16 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component v7_bd_axi_bram_ctrl_rx_ram_0;
  component v7_bd_axi_bram_ctrl_tx_ram_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 16 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component v7_bd_axi_bram_ctrl_tx_ram_0;
  component v7_bd_axi_chip2chip_0_0 is
  port (
    m_aclk : in STD_LOGIC;
    m_aresetn : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    axi_c2c_s2m_intr_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_c2c_m2s_intr_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    idelay_ref_clk : in STD_LOGIC;
    axi_c2c_selio_tx_clk_out : out STD_LOGIC;
    axi_c2c_selio_tx_data_out : out STD_LOGIC_VECTOR ( 14 downto 0 );
    axi_c2c_selio_rx_clk_in : in STD_LOGIC;
    axi_c2c_selio_rx_data_in : in STD_LOGIC_VECTOR ( 14 downto 0 );
    axi_c2c_link_status_out : out STD_LOGIC;
    axi_c2c_multi_bit_error_out : out STD_LOGIC;
    m_axi_lite_aclk : in STD_LOGIC;
    m_axi_lite_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_lite_awprot : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_lite_awvalid : out STD_LOGIC;
    m_axi_lite_awready : in STD_LOGIC;
    m_axi_lite_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_lite_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_lite_wvalid : out STD_LOGIC;
    m_axi_lite_wready : in STD_LOGIC;
    m_axi_lite_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_lite_bvalid : in STD_LOGIC;
    m_axi_lite_bready : out STD_LOGIC;
    m_axi_lite_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_lite_arprot : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_lite_arvalid : out STD_LOGIC;
    m_axi_lite_arready : in STD_LOGIC;
    m_axi_lite_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_lite_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_lite_rvalid : in STD_LOGIC;
    m_axi_lite_rready : out STD_LOGIC
  );
  end component v7_bd_axi_chip2chip_0_0;
  component v7_bd_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component v7_bd_blk_mem_gen_0_0;
  component v7_bd_clk_wiz_0_0 is
  port (
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component v7_bd_clk_wiz_0_0;
  component v7_bd_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component v7_bd_proc_sys_reset_0_0;
  component v7_bd_xadc_wiz_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    vp_in : in STD_LOGIC;
    vn_in : in STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    eoc_out : out STD_LOGIC;
    alarm_out : out STD_LOGIC;
    eos_out : out STD_LOGIC;
    busy_out : out STD_LOGIC
  );
  end component v7_bd_xadc_wiz_0_0;
  signal ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_ADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_CLK : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_EN : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_RST : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_bram_ctrl_1_BRAM_PORTA1_ADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal axi_bram_ctrl_1_BRAM_PORTA1_CLK : STD_LOGIC;
  signal axi_bram_ctrl_1_BRAM_PORTA1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_1_BRAM_PORTA1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_1_BRAM_PORTA1_EN : STD_LOGIC;
  signal axi_bram_ctrl_1_BRAM_PORTA1_RST : STD_LOGIC;
  signal axi_bram_ctrl_1_BRAM_PORTA1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_bram_ctrl_1_BRAM_PORTA2_ADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal axi_bram_ctrl_1_BRAM_PORTA2_CLK : STD_LOGIC;
  signal axi_bram_ctrl_1_BRAM_PORTA2_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_1_BRAM_PORTA2_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_1_BRAM_PORTA2_EN : STD_LOGIC;
  signal axi_bram_ctrl_1_BRAM_PORTA2_RST : STD_LOGIC;
  signal axi_bram_ctrl_1_BRAM_PORTA2_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_bram_ctrl_1_BRAM_PORTA4_ADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_bram_ctrl_1_BRAM_PORTA4_CLK : STD_LOGIC;
  signal axi_bram_ctrl_1_BRAM_PORTA4_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_1_BRAM_PORTA4_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_1_BRAM_PORTA4_EN : STD_LOGIC;
  signal axi_bram_ctrl_1_BRAM_PORTA4_RST : STD_LOGIC;
  signal axi_bram_ctrl_1_BRAM_PORTA4_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_bram_ctrl_1_BRAM_PORTA_ADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal axi_bram_ctrl_1_BRAM_PORTA_CLK : STD_LOGIC;
  signal axi_bram_ctrl_1_BRAM_PORTA_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_1_BRAM_PORTA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_1_BRAM_PORTA_EN : STD_LOGIC;
  signal axi_bram_ctrl_1_BRAM_PORTA_RST : STD_LOGIC;
  signal axi_bram_ctrl_1_BRAM_PORTA_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_bram_ctrl_reg_file1_BRAM_PORTA_ADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal axi_bram_ctrl_reg_file1_BRAM_PORTA_CLK : STD_LOGIC;
  signal axi_bram_ctrl_reg_file1_BRAM_PORTA_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_reg_file1_BRAM_PORTA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_reg_file1_BRAM_PORTA_EN : STD_LOGIC;
  signal axi_bram_ctrl_reg_file1_BRAM_PORTA_RST : STD_LOGIC;
  signal axi_bram_ctrl_reg_file1_BRAM_PORTA_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_c2c_zynq_to_v7_clk_1 : STD_LOGIC;
  signal axi_c2c_zynq_to_v7_data_1 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal axi_c2c_zynq_to_v7_reset_1 : STD_LOGIC;
  signal axi_chip2chip_0_axi_c2c_link_status_out : STD_LOGIC;
  signal axi_chip2chip_0_axi_c2c_selio_tx_clk_out : STD_LOGIC;
  signal axi_chip2chip_0_axi_c2c_selio_tx_data_out : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal axi_chip2chip_0_m_axi_lite_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_chip2chip_0_m_axi_lite_ARPROT : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_chip2chip_0_m_axi_lite_ARREADY : STD_LOGIC;
  signal axi_chip2chip_0_m_axi_lite_ARVALID : STD_LOGIC;
  signal axi_chip2chip_0_m_axi_lite_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_chip2chip_0_m_axi_lite_AWPROT : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_chip2chip_0_m_axi_lite_AWREADY : STD_LOGIC;
  signal axi_chip2chip_0_m_axi_lite_AWVALID : STD_LOGIC;
  signal axi_chip2chip_0_m_axi_lite_BREADY : STD_LOGIC;
  signal axi_chip2chip_0_m_axi_lite_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_chip2chip_0_m_axi_lite_BVALID : STD_LOGIC;
  signal axi_chip2chip_0_m_axi_lite_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_chip2chip_0_m_axi_lite_RREADY : STD_LOGIC;
  signal axi_chip2chip_0_m_axi_lite_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_chip2chip_0_m_axi_lite_RVALID : STD_LOGIC;
  signal axi_chip2chip_0_m_axi_lite_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_chip2chip_0_m_axi_lite_WREADY : STD_LOGIC;
  signal axi_chip2chip_0_m_axi_lite_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_chip2chip_0_m_axi_lite_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_interconnect_0_M01_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M01_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M01_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_M01_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M01_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M01_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M01_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_interconnect_0_M01_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M01_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M01_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_M01_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M01_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M01_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M01_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M01_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M01_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M01_AXI_RLAST : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M01_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M01_AXI_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M01_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M01_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal axi_interconnect_0_M02_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M02_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal axi_interconnect_0_M02_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M02_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M02_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M02_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M02_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M02_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M02_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal axi_interconnect_0_M03_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M03_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal axi_interconnect_0_M03_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M03_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M03_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M03_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M03_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M03_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M03_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_interconnect_0_M04_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M04_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_interconnect_0_M04_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M04_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M04_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M04_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M04_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M04_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M04_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal axi_interconnect_0_M05_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M05_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal axi_interconnect_0_M05_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M05_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M05_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M05_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M05_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M05_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M05_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal axi_interconnect_0_M06_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M06_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal axi_interconnect_0_M06_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M06_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M06_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M06_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M06_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M06_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M06_AXI_WVALID : STD_LOGIC;
  signal clk_200_diff_in_1_CLK_N : STD_LOGIC;
  signal clk_200_diff_in_1_CLK_P : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_0_clk_out3 : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal vio_0_probe_out0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_chip2chip_0_axi_c2c_multi_bit_error_out_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_chip2chip_0_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_chip2chip_0_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_chip2chip_0_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_chip2chip_0_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_chip2chip_0_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_chip2chip_0_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_chip2chip_0_axi_c2c_m2s_intr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_chip2chip_0_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axi_chip2chip_0_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_axi_chip2chip_0_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_chip2chip_0_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_axi_chip2chip_0_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_chip2chip_0_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axi_chip2chip_0_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_axi_chip2chip_0_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_chip2chip_0_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_axi_chip2chip_0_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_chip2chip_0_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axi_chip2chip_0_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_chip2chip_0_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_interconnect_0_M07_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M07_AXI_arburst_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M07_AXI_arcache_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M07_AXI_arlen_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M07_AXI_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M07_AXI_arprot_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M07_AXI_arqos_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M07_AXI_arregion_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M07_AXI_arsize_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M07_AXI_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M07_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M07_AXI_awburst_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M07_AXI_awcache_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M07_AXI_awlen_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M07_AXI_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M07_AXI_awprot_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M07_AXI_awqos_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M07_AXI_awregion_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M07_AXI_awsize_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M07_AXI_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M07_AXI_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M07_AXI_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M07_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M07_AXI_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M07_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M07_AXI_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M08_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M08_AXI_arburst_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M08_AXI_arcache_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M08_AXI_arlen_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M08_AXI_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M08_AXI_arprot_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M08_AXI_arqos_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M08_AXI_arregion_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M08_AXI_arsize_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M08_AXI_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M08_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M08_AXI_awburst_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M08_AXI_awcache_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M08_AXI_awlen_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M08_AXI_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M08_AXI_awprot_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M08_AXI_awqos_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M08_AXI_awregion_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M08_AXI_awsize_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M08_AXI_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M08_AXI_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M08_AXI_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M08_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M08_AXI_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M08_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M08_AXI_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M09_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M09_AXI_arburst_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M09_AXI_arcache_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M09_AXI_arlen_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M09_AXI_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M09_AXI_arprot_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M09_AXI_arqos_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M09_AXI_arregion_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M09_AXI_arsize_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M09_AXI_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M09_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M09_AXI_awburst_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M09_AXI_awcache_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M09_AXI_awlen_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M09_AXI_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M09_AXI_awprot_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M09_AXI_awqos_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M09_AXI_awregion_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M09_AXI_awsize_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M09_AXI_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M09_AXI_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M09_AXI_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M09_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M09_AXI_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M09_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M09_AXI_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M10_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M10_AXI_arburst_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M10_AXI_arcache_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M10_AXI_arlen_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M10_AXI_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M10_AXI_arprot_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M10_AXI_arqos_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M10_AXI_arregion_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M10_AXI_arsize_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M10_AXI_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M10_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M10_AXI_awburst_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M10_AXI_awcache_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M10_AXI_awlen_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M10_AXI_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M10_AXI_awprot_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M10_AXI_awqos_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M10_AXI_awregion_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M10_AXI_awsize_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M10_AXI_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M10_AXI_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M10_AXI_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M10_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M10_AXI_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M10_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M10_AXI_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M11_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M11_AXI_arburst_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M11_AXI_arcache_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M11_AXI_arlen_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M11_AXI_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M11_AXI_arprot_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M11_AXI_arqos_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M11_AXI_arregion_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M11_AXI_arsize_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M11_AXI_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M11_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M11_AXI_awburst_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M11_AXI_awcache_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M11_AXI_awlen_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M11_AXI_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M11_AXI_awprot_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M11_AXI_awqos_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M11_AXI_awregion_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M11_AXI_awsize_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M11_AXI_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M11_AXI_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M11_AXI_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M11_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M11_AXI_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M11_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M11_AXI_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M12_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M12_AXI_arburst_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M12_AXI_arcache_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M12_AXI_arlen_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M12_AXI_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M12_AXI_arprot_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M12_AXI_arqos_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M12_AXI_arregion_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M12_AXI_arsize_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M12_AXI_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M12_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M12_AXI_awburst_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M12_AXI_awcache_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M12_AXI_awlen_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M12_AXI_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M12_AXI_awprot_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M12_AXI_awqos_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M12_AXI_awregion_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M12_AXI_awsize_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M12_AXI_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M12_AXI_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M12_AXI_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M12_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M12_AXI_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M12_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M12_AXI_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M13_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M13_AXI_arburst_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M13_AXI_arcache_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M13_AXI_arlen_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M13_AXI_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M13_AXI_arprot_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M13_AXI_arqos_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M13_AXI_arregion_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M13_AXI_arsize_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M13_AXI_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M13_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M13_AXI_awburst_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M13_AXI_awcache_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M13_AXI_awlen_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M13_AXI_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M13_AXI_awprot_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M13_AXI_awqos_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M13_AXI_awregion_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M13_AXI_awsize_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M13_AXI_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M13_AXI_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M13_AXI_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M13_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M13_AXI_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M13_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M13_AXI_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M14_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M14_AXI_arburst_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M14_AXI_arcache_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M14_AXI_arlen_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M14_AXI_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M14_AXI_arprot_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M14_AXI_arqos_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M14_AXI_arregion_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M14_AXI_arsize_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M14_AXI_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M14_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M14_AXI_awburst_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M14_AXI_awcache_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M14_AXI_awlen_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M14_AXI_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M14_AXI_awprot_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M14_AXI_awqos_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M14_AXI_awregion_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M14_AXI_awsize_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M14_AXI_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M14_AXI_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M14_AXI_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M14_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M14_AXI_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M14_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M14_AXI_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xadc_wiz_0_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_busy_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_eoc_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_eos_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_ip2intc_irpt_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_channel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
  BRAM_CTRL_DRP_addr(15 downto 0) <= axi_bram_ctrl_1_BRAM_PORTA4_ADDR(15 downto 0);
  BRAM_CTRL_DRP_clk <= axi_bram_ctrl_1_BRAM_PORTA4_CLK;
  BRAM_CTRL_DRP_din(31 downto 0) <= axi_bram_ctrl_1_BRAM_PORTA4_DIN(31 downto 0);
  BRAM_CTRL_DRP_en <= axi_bram_ctrl_1_BRAM_PORTA4_EN;
  BRAM_CTRL_DRP_rst <= axi_bram_ctrl_1_BRAM_PORTA4_RST;
  BRAM_CTRL_DRP_we(3 downto 0) <= axi_bram_ctrl_1_BRAM_PORTA4_WE(3 downto 0);
  BRAM_CTRL_GTH_REG_FILE_addr(16 downto 0) <= axi_bram_ctrl_reg_file1_BRAM_PORTA_ADDR(16 downto 0);
  BRAM_CTRL_GTH_REG_FILE_clk <= axi_bram_ctrl_reg_file1_BRAM_PORTA_CLK;
  BRAM_CTRL_GTH_REG_FILE_din(31 downto 0) <= axi_bram_ctrl_reg_file1_BRAM_PORTA_DIN(31 downto 0);
  BRAM_CTRL_GTH_REG_FILE_en <= axi_bram_ctrl_reg_file1_BRAM_PORTA_EN;
  BRAM_CTRL_GTH_REG_FILE_rst <= axi_bram_ctrl_reg_file1_BRAM_PORTA_RST;
  BRAM_CTRL_GTH_REG_FILE_we(3 downto 0) <= axi_bram_ctrl_reg_file1_BRAM_PORTA_WE(3 downto 0);
  BRAM_CTRL_REG_FILE_addr(16 downto 0) <= axi_bram_ctrl_1_BRAM_PORTA_ADDR(16 downto 0);
  BRAM_CTRL_REG_FILE_clk <= axi_bram_ctrl_1_BRAM_PORTA_CLK;
  BRAM_CTRL_REG_FILE_din(31 downto 0) <= axi_bram_ctrl_1_BRAM_PORTA_DIN(31 downto 0);
  BRAM_CTRL_REG_FILE_en <= axi_bram_ctrl_1_BRAM_PORTA_EN;
  BRAM_CTRL_REG_FILE_rst <= axi_bram_ctrl_1_BRAM_PORTA_RST;
  BRAM_CTRL_REG_FILE_we(3 downto 0) <= axi_bram_ctrl_1_BRAM_PORTA_WE(3 downto 0);
  BRAM_CTRL_RX_RAM_addr(16 downto 0) <= axi_bram_ctrl_1_BRAM_PORTA1_ADDR(16 downto 0);
  BRAM_CTRL_RX_RAM_clk <= axi_bram_ctrl_1_BRAM_PORTA1_CLK;
  BRAM_CTRL_RX_RAM_din(31 downto 0) <= axi_bram_ctrl_1_BRAM_PORTA1_DIN(31 downto 0);
  BRAM_CTRL_RX_RAM_en <= axi_bram_ctrl_1_BRAM_PORTA1_EN;
  BRAM_CTRL_RX_RAM_rst <= axi_bram_ctrl_1_BRAM_PORTA1_RST;
  BRAM_CTRL_RX_RAM_we(3 downto 0) <= axi_bram_ctrl_1_BRAM_PORTA1_WE(3 downto 0);
  BRAM_CTRL_TX_RAM_addr(16 downto 0) <= axi_bram_ctrl_1_BRAM_PORTA2_ADDR(16 downto 0);
  BRAM_CTRL_TX_RAM_clk <= axi_bram_ctrl_1_BRAM_PORTA2_CLK;
  BRAM_CTRL_TX_RAM_din(31 downto 0) <= axi_bram_ctrl_1_BRAM_PORTA2_DIN(31 downto 0);
  BRAM_CTRL_TX_RAM_en <= axi_bram_ctrl_1_BRAM_PORTA2_EN;
  BRAM_CTRL_TX_RAM_rst <= axi_bram_ctrl_1_BRAM_PORTA2_RST;
  BRAM_CTRL_TX_RAM_we(3 downto 0) <= axi_bram_ctrl_1_BRAM_PORTA2_WE(3 downto 0);
  axi_bram_ctrl_1_BRAM_PORTA1_DOUT(31 downto 0) <= BRAM_CTRL_RX_RAM_dout(31 downto 0);
  axi_bram_ctrl_1_BRAM_PORTA2_DOUT(31 downto 0) <= BRAM_CTRL_TX_RAM_dout(31 downto 0);
  axi_bram_ctrl_1_BRAM_PORTA4_DOUT(31 downto 0) <= BRAM_CTRL_DRP_dout(31 downto 0);
  axi_bram_ctrl_1_BRAM_PORTA_DOUT(31 downto 0) <= BRAM_CTRL_REG_FILE_dout(31 downto 0);
  axi_bram_ctrl_reg_file1_BRAM_PORTA_DOUT(31 downto 0) <= BRAM_CTRL_GTH_REG_FILE_dout(31 downto 0);
  axi_c2c_v7_to_zynq_clk <= axi_chip2chip_0_axi_c2c_selio_tx_clk_out;
  axi_c2c_v7_to_zynq_data(14 downto 0) <= axi_chip2chip_0_axi_c2c_selio_tx_data_out(14 downto 0);
  axi_c2c_v7_to_zynq_link_status <= axi_chip2chip_0_axi_c2c_link_status_out;
  axi_c2c_zynq_to_v7_clk_1 <= axi_c2c_zynq_to_v7_clk;
  axi_c2c_zynq_to_v7_data_1(14 downto 0) <= axi_c2c_zynq_to_v7_data(14 downto 0);
  axi_c2c_zynq_to_v7_reset_1 <= axi_c2c_zynq_to_v7_reset;
  clk_200_diff_in_1_CLK_N <= clk_200_diff_in_clk_n;
  clk_200_diff_in_1_CLK_P <= clk_200_diff_in_clk_p;
  clk_out1_200mhz <= clk_wiz_0_clk_out1;
  clk_out2_50mhz <= clk_wiz_0_clk_out3;
axi_bram_ctrl_0: component v7_bd_axi_bram_ctrl_0_0
     port map (
      bram_addr_a(15 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(15 downto 0),
      bram_clk_a => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      bram_en_a => axi_bram_ctrl_0_BRAM_PORTA_EN,
      bram_rddata_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      bram_rst_a => axi_bram_ctrl_0_BRAM_PORTA_RST,
      bram_we_a(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(3 downto 0),
      bram_wrdata_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(31 downto 0),
      s_axi_aclk => clk_wiz_0_clk_out3,
      s_axi_araddr(15 downto 0) => axi_interconnect_0_M01_AXI_ARADDR(15 downto 0),
      s_axi_arburst(1 downto 0) => axi_interconnect_0_M01_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => axi_interconnect_0_M01_AXI_ARCACHE(3 downto 0),
      s_axi_aresetn => vio_0_probe_out0(0),
      s_axi_arlen(7 downto 0) => axi_interconnect_0_M01_AXI_ARLEN(7 downto 0),
      s_axi_arlock => axi_interconnect_0_M01_AXI_ARLOCK(0),
      s_axi_arprot(2 downto 0) => axi_interconnect_0_M01_AXI_ARPROT(2 downto 0),
      s_axi_arready => axi_interconnect_0_M01_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => axi_interconnect_0_M01_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => axi_interconnect_0_M01_AXI_ARVALID(0),
      s_axi_awaddr(15 downto 0) => axi_interconnect_0_M01_AXI_AWADDR(15 downto 0),
      s_axi_awburst(1 downto 0) => axi_interconnect_0_M01_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => axi_interconnect_0_M01_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => axi_interconnect_0_M01_AXI_AWLEN(7 downto 0),
      s_axi_awlock => axi_interconnect_0_M01_AXI_AWLOCK(0),
      s_axi_awprot(2 downto 0) => axi_interconnect_0_M01_AXI_AWPROT(2 downto 0),
      s_axi_awready => axi_interconnect_0_M01_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => axi_interconnect_0_M01_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => axi_interconnect_0_M01_AXI_AWVALID(0),
      s_axi_bready => axi_interconnect_0_M01_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => axi_interconnect_0_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_0_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_0_M01_AXI_RDATA(31 downto 0),
      s_axi_rlast => axi_interconnect_0_M01_AXI_RLAST,
      s_axi_rready => axi_interconnect_0_M01_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => axi_interconnect_0_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_0_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_0_M01_AXI_WDATA(31 downto 0),
      s_axi_wlast => axi_interconnect_0_M01_AXI_WLAST(0),
      s_axi_wready => axi_interconnect_0_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_0_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_0_M01_AXI_WVALID(0)
    );
axi_bram_ctrl_drp: component v7_bd_axi_bram_ctrl_drp_0
     port map (
      bram_addr_a(15 downto 0) => axi_bram_ctrl_1_BRAM_PORTA4_ADDR(15 downto 0),
      bram_clk_a => axi_bram_ctrl_1_BRAM_PORTA4_CLK,
      bram_en_a => axi_bram_ctrl_1_BRAM_PORTA4_EN,
      bram_rddata_a(31 downto 0) => axi_bram_ctrl_1_BRAM_PORTA4_DOUT(31 downto 0),
      bram_rst_a => axi_bram_ctrl_1_BRAM_PORTA4_RST,
      bram_we_a(3 downto 0) => axi_bram_ctrl_1_BRAM_PORTA4_WE(3 downto 0),
      bram_wrdata_a(31 downto 0) => axi_bram_ctrl_1_BRAM_PORTA4_DIN(31 downto 0),
      s_axi_aclk => clk_wiz_0_clk_out3,
      s_axi_araddr(15 downto 0) => axi_interconnect_0_M04_AXI_ARADDR(15 downto 0),
      s_axi_aresetn => vio_0_probe_out0(0),
      s_axi_arprot(2 downto 0) => axi_interconnect_0_M04_AXI_ARPROT(2 downto 0),
      s_axi_arready => axi_interconnect_0_M04_AXI_ARREADY,
      s_axi_arvalid => axi_interconnect_0_M04_AXI_ARVALID,
      s_axi_awaddr(15 downto 0) => axi_interconnect_0_M04_AXI_AWADDR(15 downto 0),
      s_axi_awprot(2 downto 0) => axi_interconnect_0_M04_AXI_AWPROT(2 downto 0),
      s_axi_awready => axi_interconnect_0_M04_AXI_AWREADY,
      s_axi_awvalid => axi_interconnect_0_M04_AXI_AWVALID,
      s_axi_bready => axi_interconnect_0_M04_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_0_M04_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_0_M04_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_0_M04_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_interconnect_0_M04_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_0_M04_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_0_M04_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_0_M04_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_interconnect_0_M04_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_0_M04_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_0_M04_AXI_WVALID
    );
axi_bram_ctrl_gth_reg_file: component v7_bd_axi_bram_ctrl_gth_reg_file_0
     port map (
      bram_addr_a(16 downto 0) => axi_bram_ctrl_reg_file1_BRAM_PORTA_ADDR(16 downto 0),
      bram_clk_a => axi_bram_ctrl_reg_file1_BRAM_PORTA_CLK,
      bram_en_a => axi_bram_ctrl_reg_file1_BRAM_PORTA_EN,
      bram_rddata_a(31 downto 0) => axi_bram_ctrl_reg_file1_BRAM_PORTA_DOUT(31 downto 0),
      bram_rst_a => axi_bram_ctrl_reg_file1_BRAM_PORTA_RST,
      bram_we_a(3 downto 0) => axi_bram_ctrl_reg_file1_BRAM_PORTA_WE(3 downto 0),
      bram_wrdata_a(31 downto 0) => axi_bram_ctrl_reg_file1_BRAM_PORTA_DIN(31 downto 0),
      s_axi_aclk => clk_wiz_0_clk_out3,
      s_axi_araddr(16 downto 0) => axi_interconnect_0_M03_AXI_ARADDR(16 downto 0),
      s_axi_aresetn => vio_0_probe_out0(0),
      s_axi_arprot(2 downto 0) => axi_interconnect_0_M03_AXI_ARPROT(2 downto 0),
      s_axi_arready => axi_interconnect_0_M03_AXI_ARREADY,
      s_axi_arvalid => axi_interconnect_0_M03_AXI_ARVALID,
      s_axi_awaddr(16 downto 0) => axi_interconnect_0_M03_AXI_AWADDR(16 downto 0),
      s_axi_awprot(2 downto 0) => axi_interconnect_0_M03_AXI_AWPROT(2 downto 0),
      s_axi_awready => axi_interconnect_0_M03_AXI_AWREADY,
      s_axi_awvalid => axi_interconnect_0_M03_AXI_AWVALID,
      s_axi_bready => axi_interconnect_0_M03_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_0_M03_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_0_M03_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_0_M03_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_interconnect_0_M03_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_0_M03_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_0_M03_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_0_M03_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_interconnect_0_M03_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_0_M03_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_0_M03_AXI_WVALID
    );
axi_bram_ctrl_reg_file: component v7_bd_axi_bram_ctrl_reg_file_0
     port map (
      bram_addr_a(16 downto 0) => axi_bram_ctrl_1_BRAM_PORTA_ADDR(16 downto 0),
      bram_clk_a => axi_bram_ctrl_1_BRAM_PORTA_CLK,
      bram_en_a => axi_bram_ctrl_1_BRAM_PORTA_EN,
      bram_rddata_a(31 downto 0) => axi_bram_ctrl_1_BRAM_PORTA_DOUT(31 downto 0),
      bram_rst_a => axi_bram_ctrl_1_BRAM_PORTA_RST,
      bram_we_a(3 downto 0) => axi_bram_ctrl_1_BRAM_PORTA_WE(3 downto 0),
      bram_wrdata_a(31 downto 0) => axi_bram_ctrl_1_BRAM_PORTA_DIN(31 downto 0),
      s_axi_aclk => clk_wiz_0_clk_out3,
      s_axi_araddr(16 downto 0) => axi_interconnect_0_M02_AXI_ARADDR(16 downto 0),
      s_axi_aresetn => vio_0_probe_out0(0),
      s_axi_arprot(2 downto 0) => axi_interconnect_0_M02_AXI_ARPROT(2 downto 0),
      s_axi_arready => axi_interconnect_0_M02_AXI_ARREADY,
      s_axi_arvalid => axi_interconnect_0_M02_AXI_ARVALID,
      s_axi_awaddr(16 downto 0) => axi_interconnect_0_M02_AXI_AWADDR(16 downto 0),
      s_axi_awprot(2 downto 0) => axi_interconnect_0_M02_AXI_AWPROT(2 downto 0),
      s_axi_awready => axi_interconnect_0_M02_AXI_AWREADY,
      s_axi_awvalid => axi_interconnect_0_M02_AXI_AWVALID,
      s_axi_bready => axi_interconnect_0_M02_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_0_M02_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_0_M02_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_0_M02_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_interconnect_0_M02_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_0_M02_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_0_M02_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_0_M02_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_interconnect_0_M02_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_0_M02_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_0_M02_AXI_WVALID
    );
axi_bram_ctrl_rx_ram: component v7_bd_axi_bram_ctrl_rx_ram_0
     port map (
      bram_addr_a(16 downto 0) => axi_bram_ctrl_1_BRAM_PORTA1_ADDR(16 downto 0),
      bram_clk_a => axi_bram_ctrl_1_BRAM_PORTA1_CLK,
      bram_en_a => axi_bram_ctrl_1_BRAM_PORTA1_EN,
      bram_rddata_a(31 downto 0) => axi_bram_ctrl_1_BRAM_PORTA1_DOUT(31 downto 0),
      bram_rst_a => axi_bram_ctrl_1_BRAM_PORTA1_RST,
      bram_we_a(3 downto 0) => axi_bram_ctrl_1_BRAM_PORTA1_WE(3 downto 0),
      bram_wrdata_a(31 downto 0) => axi_bram_ctrl_1_BRAM_PORTA1_DIN(31 downto 0),
      s_axi_aclk => clk_wiz_0_clk_out3,
      s_axi_araddr(16 downto 0) => axi_interconnect_0_M05_AXI_ARADDR(16 downto 0),
      s_axi_aresetn => vio_0_probe_out0(0),
      s_axi_arprot(2 downto 0) => axi_interconnect_0_M05_AXI_ARPROT(2 downto 0),
      s_axi_arready => axi_interconnect_0_M05_AXI_ARREADY,
      s_axi_arvalid => axi_interconnect_0_M05_AXI_ARVALID,
      s_axi_awaddr(16 downto 0) => axi_interconnect_0_M05_AXI_AWADDR(16 downto 0),
      s_axi_awprot(2 downto 0) => axi_interconnect_0_M05_AXI_AWPROT(2 downto 0),
      s_axi_awready => axi_interconnect_0_M05_AXI_AWREADY,
      s_axi_awvalid => axi_interconnect_0_M05_AXI_AWVALID,
      s_axi_bready => axi_interconnect_0_M05_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_0_M05_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_0_M05_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_0_M05_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_interconnect_0_M05_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_0_M05_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_0_M05_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_0_M05_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_interconnect_0_M05_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_0_M05_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_0_M05_AXI_WVALID
    );
axi_bram_ctrl_tx_ram: component v7_bd_axi_bram_ctrl_tx_ram_0
     port map (
      bram_addr_a(16 downto 0) => axi_bram_ctrl_1_BRAM_PORTA2_ADDR(16 downto 0),
      bram_clk_a => axi_bram_ctrl_1_BRAM_PORTA2_CLK,
      bram_en_a => axi_bram_ctrl_1_BRAM_PORTA2_EN,
      bram_rddata_a(31 downto 0) => axi_bram_ctrl_1_BRAM_PORTA2_DOUT(31 downto 0),
      bram_rst_a => axi_bram_ctrl_1_BRAM_PORTA2_RST,
      bram_we_a(3 downto 0) => axi_bram_ctrl_1_BRAM_PORTA2_WE(3 downto 0),
      bram_wrdata_a(31 downto 0) => axi_bram_ctrl_1_BRAM_PORTA2_DIN(31 downto 0),
      s_axi_aclk => clk_wiz_0_clk_out3,
      s_axi_araddr(16 downto 0) => axi_interconnect_0_M06_AXI_ARADDR(16 downto 0),
      s_axi_aresetn => vio_0_probe_out0(0),
      s_axi_arprot(2 downto 0) => axi_interconnect_0_M06_AXI_ARPROT(2 downto 0),
      s_axi_arready => axi_interconnect_0_M06_AXI_ARREADY,
      s_axi_arvalid => axi_interconnect_0_M06_AXI_ARVALID,
      s_axi_awaddr(16 downto 0) => axi_interconnect_0_M06_AXI_AWADDR(16 downto 0),
      s_axi_awprot(2 downto 0) => axi_interconnect_0_M06_AXI_AWPROT(2 downto 0),
      s_axi_awready => axi_interconnect_0_M06_AXI_AWREADY,
      s_axi_awvalid => axi_interconnect_0_M06_AXI_AWVALID,
      s_axi_bready => axi_interconnect_0_M06_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_0_M06_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_0_M06_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_0_M06_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_interconnect_0_M06_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_0_M06_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_0_M06_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_0_M06_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_interconnect_0_M06_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_0_M06_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_0_M06_AXI_WVALID
    );
axi_chip2chip_0: component v7_bd_axi_chip2chip_0_0
     port map (
      axi_c2c_link_status_out => axi_chip2chip_0_axi_c2c_link_status_out,
      axi_c2c_m2s_intr_out(3 downto 0) => NLW_axi_chip2chip_0_axi_c2c_m2s_intr_out_UNCONNECTED(3 downto 0),
      axi_c2c_multi_bit_error_out => NLW_axi_chip2chip_0_axi_c2c_multi_bit_error_out_UNCONNECTED,
      axi_c2c_s2m_intr_in(3 downto 0) => B"0000",
      axi_c2c_selio_rx_clk_in => axi_c2c_zynq_to_v7_clk_1,
      axi_c2c_selio_rx_data_in(14 downto 0) => axi_c2c_zynq_to_v7_data_1(14 downto 0),
      axi_c2c_selio_tx_clk_out => axi_chip2chip_0_axi_c2c_selio_tx_clk_out,
      axi_c2c_selio_tx_data_out(14 downto 0) => axi_chip2chip_0_axi_c2c_selio_tx_data_out(14 downto 0),
      idelay_ref_clk => clk_wiz_0_clk_out1,
      m_aclk => clk_wiz_0_clk_out3,
      m_aresetn => ARESETN_1(0),
      m_axi_araddr(31 downto 0) => NLW_axi_chip2chip_0_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_axi_chip2chip_0_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arid(0) => NLW_axi_chip2chip_0_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_axi_chip2chip_0_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arready => '0',
      m_axi_arsize(2 downto 0) => NLW_axi_chip2chip_0_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_arvalid => NLW_axi_chip2chip_0_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_axi_chip2chip_0_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_axi_chip2chip_0_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awid(0) => NLW_axi_chip2chip_0_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => NLW_axi_chip2chip_0_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awready => '0',
      m_axi_awsize(2 downto 0) => NLW_axi_chip2chip_0_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awvalid => NLW_axi_chip2chip_0_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(0) => '0',
      m_axi_bready => NLW_axi_chip2chip_0_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_bvalid => '0',
      m_axi_lite_aclk => clk_wiz_0_clk_out3,
      m_axi_lite_araddr(31 downto 0) => axi_chip2chip_0_m_axi_lite_ARADDR(31 downto 0),
      m_axi_lite_arprot(1 downto 0) => axi_chip2chip_0_m_axi_lite_ARPROT(1 downto 0),
      m_axi_lite_arready => axi_chip2chip_0_m_axi_lite_ARREADY,
      m_axi_lite_arvalid => axi_chip2chip_0_m_axi_lite_ARVALID,
      m_axi_lite_awaddr(31 downto 0) => axi_chip2chip_0_m_axi_lite_AWADDR(31 downto 0),
      m_axi_lite_awprot(1 downto 0) => axi_chip2chip_0_m_axi_lite_AWPROT(1 downto 0),
      m_axi_lite_awready => axi_chip2chip_0_m_axi_lite_AWREADY,
      m_axi_lite_awvalid => axi_chip2chip_0_m_axi_lite_AWVALID,
      m_axi_lite_bready => axi_chip2chip_0_m_axi_lite_BREADY,
      m_axi_lite_bresp(1 downto 0) => axi_chip2chip_0_m_axi_lite_BRESP(1 downto 0),
      m_axi_lite_bvalid => axi_chip2chip_0_m_axi_lite_BVALID,
      m_axi_lite_rdata(31 downto 0) => axi_chip2chip_0_m_axi_lite_RDATA(31 downto 0),
      m_axi_lite_rready => axi_chip2chip_0_m_axi_lite_RREADY,
      m_axi_lite_rresp(1 downto 0) => axi_chip2chip_0_m_axi_lite_RRESP(1 downto 0),
      m_axi_lite_rvalid => axi_chip2chip_0_m_axi_lite_RVALID,
      m_axi_lite_wdata(31 downto 0) => axi_chip2chip_0_m_axi_lite_WDATA(31 downto 0),
      m_axi_lite_wready => axi_chip2chip_0_m_axi_lite_WREADY,
      m_axi_lite_wstrb(3 downto 0) => axi_chip2chip_0_m_axi_lite_WSTRB(3 downto 0),
      m_axi_lite_wvalid => axi_chip2chip_0_m_axi_lite_WVALID,
      m_axi_rdata(31 downto 0) => B"00000000000000000000000000000000",
      m_axi_rid(0) => '0',
      m_axi_rlast => '0',
      m_axi_rready => NLW_axi_chip2chip_0_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_rvalid => '0',
      m_axi_wdata(31 downto 0) => NLW_axi_chip2chip_0_m_axi_wdata_UNCONNECTED(31 downto 0),
      m_axi_wlast => NLW_axi_chip2chip_0_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(3 downto 0) => NLW_axi_chip2chip_0_m_axi_wstrb_UNCONNECTED(3 downto 0),
      m_axi_wuser(0) => NLW_axi_chip2chip_0_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_axi_chip2chip_0_m_axi_wvalid_UNCONNECTED
    );
axi_interconnect_0: entity work.v7_bd_axi_interconnect_0_0
     port map (
      ACLK => clk_wiz_0_clk_out3,
      ARESETN(0) => ARESETN_1(0),
      M00_ACLK => clk_wiz_0_clk_out3,
      M00_ARESETN(0) => vio_0_probe_out0(0),
      M00_AXI_araddr(10 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(10 downto 0),
      M00_AXI_arready => axi_interconnect_0_M00_AXI_ARREADY,
      M00_AXI_arvalid => axi_interconnect_0_M00_AXI_ARVALID,
      M00_AXI_awaddr(10 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(10 downto 0),
      M00_AXI_awready => axi_interconnect_0_M00_AXI_AWREADY,
      M00_AXI_awvalid => axi_interconnect_0_M00_AXI_AWVALID,
      M00_AXI_bready => axi_interconnect_0_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => axi_interconnect_0_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => axi_interconnect_0_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_interconnect_0_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_interconnect_0_M00_AXI_WVALID,
      M01_ACLK => clk_wiz_0_clk_out3,
      M01_ARESETN(0) => vio_0_probe_out0(0),
      M01_AXI_araddr(15 downto 0) => axi_interconnect_0_M01_AXI_ARADDR(15 downto 0),
      M01_AXI_arburst(1 downto 0) => axi_interconnect_0_M01_AXI_ARBURST(1 downto 0),
      M01_AXI_arcache(3 downto 0) => axi_interconnect_0_M01_AXI_ARCACHE(3 downto 0),
      M01_AXI_arlen(7 downto 0) => axi_interconnect_0_M01_AXI_ARLEN(7 downto 0),
      M01_AXI_arlock(0) => axi_interconnect_0_M01_AXI_ARLOCK(0),
      M01_AXI_arprot(2 downto 0) => axi_interconnect_0_M01_AXI_ARPROT(2 downto 0),
      M01_AXI_arready(0) => axi_interconnect_0_M01_AXI_ARREADY,
      M01_AXI_arsize(2 downto 0) => axi_interconnect_0_M01_AXI_ARSIZE(2 downto 0),
      M01_AXI_arvalid(0) => axi_interconnect_0_M01_AXI_ARVALID(0),
      M01_AXI_awaddr(15 downto 0) => axi_interconnect_0_M01_AXI_AWADDR(15 downto 0),
      M01_AXI_awburst(1 downto 0) => axi_interconnect_0_M01_AXI_AWBURST(1 downto 0),
      M01_AXI_awcache(3 downto 0) => axi_interconnect_0_M01_AXI_AWCACHE(3 downto 0),
      M01_AXI_awlen(7 downto 0) => axi_interconnect_0_M01_AXI_AWLEN(7 downto 0),
      M01_AXI_awlock(0) => axi_interconnect_0_M01_AXI_AWLOCK(0),
      M01_AXI_awprot(2 downto 0) => axi_interconnect_0_M01_AXI_AWPROT(2 downto 0),
      M01_AXI_awready(0) => axi_interconnect_0_M01_AXI_AWREADY,
      M01_AXI_awsize(2 downto 0) => axi_interconnect_0_M01_AXI_AWSIZE(2 downto 0),
      M01_AXI_awvalid(0) => axi_interconnect_0_M01_AXI_AWVALID(0),
      M01_AXI_bready(0) => axi_interconnect_0_M01_AXI_BREADY(0),
      M01_AXI_bresp(1 downto 0) => axi_interconnect_0_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid(0) => axi_interconnect_0_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => axi_interconnect_0_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rlast(0) => axi_interconnect_0_M01_AXI_RLAST,
      M01_AXI_rready(0) => axi_interconnect_0_M01_AXI_RREADY(0),
      M01_AXI_rresp(1 downto 0) => axi_interconnect_0_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid(0) => axi_interconnect_0_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => axi_interconnect_0_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wlast(0) => axi_interconnect_0_M01_AXI_WLAST(0),
      M01_AXI_wready(0) => axi_interconnect_0_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => axi_interconnect_0_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid(0) => axi_interconnect_0_M01_AXI_WVALID(0),
      M02_ACLK => clk_wiz_0_clk_out3,
      M02_ARESETN(0) => vio_0_probe_out0(0),
      M02_AXI_araddr(16 downto 0) => axi_interconnect_0_M02_AXI_ARADDR(16 downto 0),
      M02_AXI_arprot(2 downto 0) => axi_interconnect_0_M02_AXI_ARPROT(2 downto 0),
      M02_AXI_arready => axi_interconnect_0_M02_AXI_ARREADY,
      M02_AXI_arvalid => axi_interconnect_0_M02_AXI_ARVALID,
      M02_AXI_awaddr(16 downto 0) => axi_interconnect_0_M02_AXI_AWADDR(16 downto 0),
      M02_AXI_awprot(2 downto 0) => axi_interconnect_0_M02_AXI_AWPROT(2 downto 0),
      M02_AXI_awready => axi_interconnect_0_M02_AXI_AWREADY,
      M02_AXI_awvalid => axi_interconnect_0_M02_AXI_AWVALID,
      M02_AXI_bready => axi_interconnect_0_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => axi_interconnect_0_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => axi_interconnect_0_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => axi_interconnect_0_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready => axi_interconnect_0_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => axi_interconnect_0_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => axi_interconnect_0_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => axi_interconnect_0_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready => axi_interconnect_0_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => axi_interconnect_0_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid => axi_interconnect_0_M02_AXI_WVALID,
      M03_ACLK => clk_wiz_0_clk_out3,
      M03_ARESETN(0) => vio_0_probe_out0(0),
      M03_AXI_araddr(16 downto 0) => axi_interconnect_0_M03_AXI_ARADDR(16 downto 0),
      M03_AXI_arprot(2 downto 0) => axi_interconnect_0_M03_AXI_ARPROT(2 downto 0),
      M03_AXI_arready => axi_interconnect_0_M03_AXI_ARREADY,
      M03_AXI_arvalid => axi_interconnect_0_M03_AXI_ARVALID,
      M03_AXI_awaddr(16 downto 0) => axi_interconnect_0_M03_AXI_AWADDR(16 downto 0),
      M03_AXI_awprot(2 downto 0) => axi_interconnect_0_M03_AXI_AWPROT(2 downto 0),
      M03_AXI_awready => axi_interconnect_0_M03_AXI_AWREADY,
      M03_AXI_awvalid => axi_interconnect_0_M03_AXI_AWVALID,
      M03_AXI_bready => axi_interconnect_0_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => axi_interconnect_0_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => axi_interconnect_0_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => axi_interconnect_0_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready => axi_interconnect_0_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => axi_interconnect_0_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => axi_interconnect_0_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => axi_interconnect_0_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready => axi_interconnect_0_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => axi_interconnect_0_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid => axi_interconnect_0_M03_AXI_WVALID,
      M04_ACLK => clk_wiz_0_clk_out3,
      M04_ARESETN(0) => vio_0_probe_out0(0),
      M04_AXI_araddr(15 downto 0) => axi_interconnect_0_M04_AXI_ARADDR(15 downto 0),
      M04_AXI_arprot(2 downto 0) => axi_interconnect_0_M04_AXI_ARPROT(2 downto 0),
      M04_AXI_arready => axi_interconnect_0_M04_AXI_ARREADY,
      M04_AXI_arvalid => axi_interconnect_0_M04_AXI_ARVALID,
      M04_AXI_awaddr(15 downto 0) => axi_interconnect_0_M04_AXI_AWADDR(15 downto 0),
      M04_AXI_awprot(2 downto 0) => axi_interconnect_0_M04_AXI_AWPROT(2 downto 0),
      M04_AXI_awready => axi_interconnect_0_M04_AXI_AWREADY,
      M04_AXI_awvalid => axi_interconnect_0_M04_AXI_AWVALID,
      M04_AXI_bready => axi_interconnect_0_M04_AXI_BREADY,
      M04_AXI_bresp(1 downto 0) => axi_interconnect_0_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid => axi_interconnect_0_M04_AXI_BVALID,
      M04_AXI_rdata(31 downto 0) => axi_interconnect_0_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rready => axi_interconnect_0_M04_AXI_RREADY,
      M04_AXI_rresp(1 downto 0) => axi_interconnect_0_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid => axi_interconnect_0_M04_AXI_RVALID,
      M04_AXI_wdata(31 downto 0) => axi_interconnect_0_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wready => axi_interconnect_0_M04_AXI_WREADY,
      M04_AXI_wstrb(3 downto 0) => axi_interconnect_0_M04_AXI_WSTRB(3 downto 0),
      M04_AXI_wvalid => axi_interconnect_0_M04_AXI_WVALID,
      M05_ACLK => clk_wiz_0_clk_out3,
      M05_ARESETN(0) => vio_0_probe_out0(0),
      M05_AXI_araddr(16 downto 0) => axi_interconnect_0_M05_AXI_ARADDR(16 downto 0),
      M05_AXI_arprot(2 downto 0) => axi_interconnect_0_M05_AXI_ARPROT(2 downto 0),
      M05_AXI_arready => axi_interconnect_0_M05_AXI_ARREADY,
      M05_AXI_arvalid => axi_interconnect_0_M05_AXI_ARVALID,
      M05_AXI_awaddr(16 downto 0) => axi_interconnect_0_M05_AXI_AWADDR(16 downto 0),
      M05_AXI_awprot(2 downto 0) => axi_interconnect_0_M05_AXI_AWPROT(2 downto 0),
      M05_AXI_awready => axi_interconnect_0_M05_AXI_AWREADY,
      M05_AXI_awvalid => axi_interconnect_0_M05_AXI_AWVALID,
      M05_AXI_bready => axi_interconnect_0_M05_AXI_BREADY,
      M05_AXI_bresp(1 downto 0) => axi_interconnect_0_M05_AXI_BRESP(1 downto 0),
      M05_AXI_bvalid => axi_interconnect_0_M05_AXI_BVALID,
      M05_AXI_rdata(31 downto 0) => axi_interconnect_0_M05_AXI_RDATA(31 downto 0),
      M05_AXI_rready => axi_interconnect_0_M05_AXI_RREADY,
      M05_AXI_rresp(1 downto 0) => axi_interconnect_0_M05_AXI_RRESP(1 downto 0),
      M05_AXI_rvalid => axi_interconnect_0_M05_AXI_RVALID,
      M05_AXI_wdata(31 downto 0) => axi_interconnect_0_M05_AXI_WDATA(31 downto 0),
      M05_AXI_wready => axi_interconnect_0_M05_AXI_WREADY,
      M05_AXI_wstrb(3 downto 0) => axi_interconnect_0_M05_AXI_WSTRB(3 downto 0),
      M05_AXI_wvalid => axi_interconnect_0_M05_AXI_WVALID,
      M06_ACLK => clk_wiz_0_clk_out3,
      M06_ARESETN(0) => vio_0_probe_out0(0),
      M06_AXI_araddr(16 downto 0) => axi_interconnect_0_M06_AXI_ARADDR(16 downto 0),
      M06_AXI_arprot(2 downto 0) => axi_interconnect_0_M06_AXI_ARPROT(2 downto 0),
      M06_AXI_arready => axi_interconnect_0_M06_AXI_ARREADY,
      M06_AXI_arvalid => axi_interconnect_0_M06_AXI_ARVALID,
      M06_AXI_awaddr(16 downto 0) => axi_interconnect_0_M06_AXI_AWADDR(16 downto 0),
      M06_AXI_awprot(2 downto 0) => axi_interconnect_0_M06_AXI_AWPROT(2 downto 0),
      M06_AXI_awready => axi_interconnect_0_M06_AXI_AWREADY,
      M06_AXI_awvalid => axi_interconnect_0_M06_AXI_AWVALID,
      M06_AXI_bready => axi_interconnect_0_M06_AXI_BREADY,
      M06_AXI_bresp(1 downto 0) => axi_interconnect_0_M06_AXI_BRESP(1 downto 0),
      M06_AXI_bvalid => axi_interconnect_0_M06_AXI_BVALID,
      M06_AXI_rdata(31 downto 0) => axi_interconnect_0_M06_AXI_RDATA(31 downto 0),
      M06_AXI_rready => axi_interconnect_0_M06_AXI_RREADY,
      M06_AXI_rresp(1 downto 0) => axi_interconnect_0_M06_AXI_RRESP(1 downto 0),
      M06_AXI_rvalid => axi_interconnect_0_M06_AXI_RVALID,
      M06_AXI_wdata(31 downto 0) => axi_interconnect_0_M06_AXI_WDATA(31 downto 0),
      M06_AXI_wready => axi_interconnect_0_M06_AXI_WREADY,
      M06_AXI_wstrb(3 downto 0) => axi_interconnect_0_M06_AXI_WSTRB(3 downto 0),
      M06_AXI_wvalid => axi_interconnect_0_M06_AXI_WVALID,
      M07_ACLK => clk_wiz_0_clk_out3,
      M07_ARESETN(0) => vio_0_probe_out0(0),
      M07_AXI_araddr => NLW_axi_interconnect_0_M07_AXI_araddr_UNCONNECTED,
      M07_AXI_arburst => NLW_axi_interconnect_0_M07_AXI_arburst_UNCONNECTED,
      M07_AXI_arcache => NLW_axi_interconnect_0_M07_AXI_arcache_UNCONNECTED,
      M07_AXI_arlen => NLW_axi_interconnect_0_M07_AXI_arlen_UNCONNECTED,
      M07_AXI_arlock => NLW_axi_interconnect_0_M07_AXI_arlock_UNCONNECTED,
      M07_AXI_arprot => NLW_axi_interconnect_0_M07_AXI_arprot_UNCONNECTED,
      M07_AXI_arqos => NLW_axi_interconnect_0_M07_AXI_arqos_UNCONNECTED,
      M07_AXI_arready => '0',
      M07_AXI_arregion => NLW_axi_interconnect_0_M07_AXI_arregion_UNCONNECTED,
      M07_AXI_arsize => NLW_axi_interconnect_0_M07_AXI_arsize_UNCONNECTED,
      M07_AXI_arvalid => NLW_axi_interconnect_0_M07_AXI_arvalid_UNCONNECTED,
      M07_AXI_awaddr => NLW_axi_interconnect_0_M07_AXI_awaddr_UNCONNECTED,
      M07_AXI_awburst => NLW_axi_interconnect_0_M07_AXI_awburst_UNCONNECTED,
      M07_AXI_awcache => NLW_axi_interconnect_0_M07_AXI_awcache_UNCONNECTED,
      M07_AXI_awlen => NLW_axi_interconnect_0_M07_AXI_awlen_UNCONNECTED,
      M07_AXI_awlock => NLW_axi_interconnect_0_M07_AXI_awlock_UNCONNECTED,
      M07_AXI_awprot => NLW_axi_interconnect_0_M07_AXI_awprot_UNCONNECTED,
      M07_AXI_awqos => NLW_axi_interconnect_0_M07_AXI_awqos_UNCONNECTED,
      M07_AXI_awready => '0',
      M07_AXI_awregion => NLW_axi_interconnect_0_M07_AXI_awregion_UNCONNECTED,
      M07_AXI_awsize => NLW_axi_interconnect_0_M07_AXI_awsize_UNCONNECTED,
      M07_AXI_awvalid => NLW_axi_interconnect_0_M07_AXI_awvalid_UNCONNECTED,
      M07_AXI_bready => NLW_axi_interconnect_0_M07_AXI_bready_UNCONNECTED,
      M07_AXI_bresp => '0',
      M07_AXI_bvalid => '0',
      M07_AXI_rdata => '0',
      M07_AXI_rlast => '0',
      M07_AXI_rready => NLW_axi_interconnect_0_M07_AXI_rready_UNCONNECTED,
      M07_AXI_rresp => '0',
      M07_AXI_rvalid => '0',
      M07_AXI_wdata => NLW_axi_interconnect_0_M07_AXI_wdata_UNCONNECTED,
      M07_AXI_wlast => NLW_axi_interconnect_0_M07_AXI_wlast_UNCONNECTED,
      M07_AXI_wready => '0',
      M07_AXI_wstrb => NLW_axi_interconnect_0_M07_AXI_wstrb_UNCONNECTED,
      M07_AXI_wvalid => NLW_axi_interconnect_0_M07_AXI_wvalid_UNCONNECTED,
      M08_ACLK => clk_wiz_0_clk_out3,
      M08_ARESETN(0) => vio_0_probe_out0(0),
      M08_AXI_araddr => NLW_axi_interconnect_0_M08_AXI_araddr_UNCONNECTED,
      M08_AXI_arburst => NLW_axi_interconnect_0_M08_AXI_arburst_UNCONNECTED,
      M08_AXI_arcache => NLW_axi_interconnect_0_M08_AXI_arcache_UNCONNECTED,
      M08_AXI_arlen => NLW_axi_interconnect_0_M08_AXI_arlen_UNCONNECTED,
      M08_AXI_arlock => NLW_axi_interconnect_0_M08_AXI_arlock_UNCONNECTED,
      M08_AXI_arprot => NLW_axi_interconnect_0_M08_AXI_arprot_UNCONNECTED,
      M08_AXI_arqos => NLW_axi_interconnect_0_M08_AXI_arqos_UNCONNECTED,
      M08_AXI_arready => '0',
      M08_AXI_arregion => NLW_axi_interconnect_0_M08_AXI_arregion_UNCONNECTED,
      M08_AXI_arsize => NLW_axi_interconnect_0_M08_AXI_arsize_UNCONNECTED,
      M08_AXI_arvalid => NLW_axi_interconnect_0_M08_AXI_arvalid_UNCONNECTED,
      M08_AXI_awaddr => NLW_axi_interconnect_0_M08_AXI_awaddr_UNCONNECTED,
      M08_AXI_awburst => NLW_axi_interconnect_0_M08_AXI_awburst_UNCONNECTED,
      M08_AXI_awcache => NLW_axi_interconnect_0_M08_AXI_awcache_UNCONNECTED,
      M08_AXI_awlen => NLW_axi_interconnect_0_M08_AXI_awlen_UNCONNECTED,
      M08_AXI_awlock => NLW_axi_interconnect_0_M08_AXI_awlock_UNCONNECTED,
      M08_AXI_awprot => NLW_axi_interconnect_0_M08_AXI_awprot_UNCONNECTED,
      M08_AXI_awqos => NLW_axi_interconnect_0_M08_AXI_awqos_UNCONNECTED,
      M08_AXI_awready => '0',
      M08_AXI_awregion => NLW_axi_interconnect_0_M08_AXI_awregion_UNCONNECTED,
      M08_AXI_awsize => NLW_axi_interconnect_0_M08_AXI_awsize_UNCONNECTED,
      M08_AXI_awvalid => NLW_axi_interconnect_0_M08_AXI_awvalid_UNCONNECTED,
      M08_AXI_bready => NLW_axi_interconnect_0_M08_AXI_bready_UNCONNECTED,
      M08_AXI_bresp => '0',
      M08_AXI_bvalid => '0',
      M08_AXI_rdata => '0',
      M08_AXI_rlast => '0',
      M08_AXI_rready => NLW_axi_interconnect_0_M08_AXI_rready_UNCONNECTED,
      M08_AXI_rresp => '0',
      M08_AXI_rvalid => '0',
      M08_AXI_wdata => NLW_axi_interconnect_0_M08_AXI_wdata_UNCONNECTED,
      M08_AXI_wlast => NLW_axi_interconnect_0_M08_AXI_wlast_UNCONNECTED,
      M08_AXI_wready => '0',
      M08_AXI_wstrb => NLW_axi_interconnect_0_M08_AXI_wstrb_UNCONNECTED,
      M08_AXI_wvalid => NLW_axi_interconnect_0_M08_AXI_wvalid_UNCONNECTED,
      M09_ACLK => clk_wiz_0_clk_out3,
      M09_ARESETN(0) => vio_0_probe_out0(0),
      M09_AXI_araddr => NLW_axi_interconnect_0_M09_AXI_araddr_UNCONNECTED,
      M09_AXI_arburst => NLW_axi_interconnect_0_M09_AXI_arburst_UNCONNECTED,
      M09_AXI_arcache => NLW_axi_interconnect_0_M09_AXI_arcache_UNCONNECTED,
      M09_AXI_arlen => NLW_axi_interconnect_0_M09_AXI_arlen_UNCONNECTED,
      M09_AXI_arlock => NLW_axi_interconnect_0_M09_AXI_arlock_UNCONNECTED,
      M09_AXI_arprot => NLW_axi_interconnect_0_M09_AXI_arprot_UNCONNECTED,
      M09_AXI_arqos => NLW_axi_interconnect_0_M09_AXI_arqos_UNCONNECTED,
      M09_AXI_arready => '0',
      M09_AXI_arregion => NLW_axi_interconnect_0_M09_AXI_arregion_UNCONNECTED,
      M09_AXI_arsize => NLW_axi_interconnect_0_M09_AXI_arsize_UNCONNECTED,
      M09_AXI_arvalid => NLW_axi_interconnect_0_M09_AXI_arvalid_UNCONNECTED,
      M09_AXI_awaddr => NLW_axi_interconnect_0_M09_AXI_awaddr_UNCONNECTED,
      M09_AXI_awburst => NLW_axi_interconnect_0_M09_AXI_awburst_UNCONNECTED,
      M09_AXI_awcache => NLW_axi_interconnect_0_M09_AXI_awcache_UNCONNECTED,
      M09_AXI_awlen => NLW_axi_interconnect_0_M09_AXI_awlen_UNCONNECTED,
      M09_AXI_awlock => NLW_axi_interconnect_0_M09_AXI_awlock_UNCONNECTED,
      M09_AXI_awprot => NLW_axi_interconnect_0_M09_AXI_awprot_UNCONNECTED,
      M09_AXI_awqos => NLW_axi_interconnect_0_M09_AXI_awqos_UNCONNECTED,
      M09_AXI_awready => '0',
      M09_AXI_awregion => NLW_axi_interconnect_0_M09_AXI_awregion_UNCONNECTED,
      M09_AXI_awsize => NLW_axi_interconnect_0_M09_AXI_awsize_UNCONNECTED,
      M09_AXI_awvalid => NLW_axi_interconnect_0_M09_AXI_awvalid_UNCONNECTED,
      M09_AXI_bready => NLW_axi_interconnect_0_M09_AXI_bready_UNCONNECTED,
      M09_AXI_bresp => '0',
      M09_AXI_bvalid => '0',
      M09_AXI_rdata => '0',
      M09_AXI_rlast => '0',
      M09_AXI_rready => NLW_axi_interconnect_0_M09_AXI_rready_UNCONNECTED,
      M09_AXI_rresp => '0',
      M09_AXI_rvalid => '0',
      M09_AXI_wdata => NLW_axi_interconnect_0_M09_AXI_wdata_UNCONNECTED,
      M09_AXI_wlast => NLW_axi_interconnect_0_M09_AXI_wlast_UNCONNECTED,
      M09_AXI_wready => '0',
      M09_AXI_wstrb => NLW_axi_interconnect_0_M09_AXI_wstrb_UNCONNECTED,
      M09_AXI_wvalid => NLW_axi_interconnect_0_M09_AXI_wvalid_UNCONNECTED,
      M10_ACLK => clk_wiz_0_clk_out3,
      M10_ARESETN(0) => vio_0_probe_out0(0),
      M10_AXI_araddr => NLW_axi_interconnect_0_M10_AXI_araddr_UNCONNECTED,
      M10_AXI_arburst => NLW_axi_interconnect_0_M10_AXI_arburst_UNCONNECTED,
      M10_AXI_arcache => NLW_axi_interconnect_0_M10_AXI_arcache_UNCONNECTED,
      M10_AXI_arlen => NLW_axi_interconnect_0_M10_AXI_arlen_UNCONNECTED,
      M10_AXI_arlock => NLW_axi_interconnect_0_M10_AXI_arlock_UNCONNECTED,
      M10_AXI_arprot => NLW_axi_interconnect_0_M10_AXI_arprot_UNCONNECTED,
      M10_AXI_arqos => NLW_axi_interconnect_0_M10_AXI_arqos_UNCONNECTED,
      M10_AXI_arready => '0',
      M10_AXI_arregion => NLW_axi_interconnect_0_M10_AXI_arregion_UNCONNECTED,
      M10_AXI_arsize => NLW_axi_interconnect_0_M10_AXI_arsize_UNCONNECTED,
      M10_AXI_arvalid => NLW_axi_interconnect_0_M10_AXI_arvalid_UNCONNECTED,
      M10_AXI_awaddr => NLW_axi_interconnect_0_M10_AXI_awaddr_UNCONNECTED,
      M10_AXI_awburst => NLW_axi_interconnect_0_M10_AXI_awburst_UNCONNECTED,
      M10_AXI_awcache => NLW_axi_interconnect_0_M10_AXI_awcache_UNCONNECTED,
      M10_AXI_awlen => NLW_axi_interconnect_0_M10_AXI_awlen_UNCONNECTED,
      M10_AXI_awlock => NLW_axi_interconnect_0_M10_AXI_awlock_UNCONNECTED,
      M10_AXI_awprot => NLW_axi_interconnect_0_M10_AXI_awprot_UNCONNECTED,
      M10_AXI_awqos => NLW_axi_interconnect_0_M10_AXI_awqos_UNCONNECTED,
      M10_AXI_awready => '0',
      M10_AXI_awregion => NLW_axi_interconnect_0_M10_AXI_awregion_UNCONNECTED,
      M10_AXI_awsize => NLW_axi_interconnect_0_M10_AXI_awsize_UNCONNECTED,
      M10_AXI_awvalid => NLW_axi_interconnect_0_M10_AXI_awvalid_UNCONNECTED,
      M10_AXI_bready => NLW_axi_interconnect_0_M10_AXI_bready_UNCONNECTED,
      M10_AXI_bresp => '0',
      M10_AXI_bvalid => '0',
      M10_AXI_rdata => '0',
      M10_AXI_rlast => '0',
      M10_AXI_rready => NLW_axi_interconnect_0_M10_AXI_rready_UNCONNECTED,
      M10_AXI_rresp => '0',
      M10_AXI_rvalid => '0',
      M10_AXI_wdata => NLW_axi_interconnect_0_M10_AXI_wdata_UNCONNECTED,
      M10_AXI_wlast => NLW_axi_interconnect_0_M10_AXI_wlast_UNCONNECTED,
      M10_AXI_wready => '0',
      M10_AXI_wstrb => NLW_axi_interconnect_0_M10_AXI_wstrb_UNCONNECTED,
      M10_AXI_wvalid => NLW_axi_interconnect_0_M10_AXI_wvalid_UNCONNECTED,
      M11_ACLK => clk_wiz_0_clk_out3,
      M11_ARESETN(0) => vio_0_probe_out0(0),
      M11_AXI_araddr => NLW_axi_interconnect_0_M11_AXI_araddr_UNCONNECTED,
      M11_AXI_arburst => NLW_axi_interconnect_0_M11_AXI_arburst_UNCONNECTED,
      M11_AXI_arcache => NLW_axi_interconnect_0_M11_AXI_arcache_UNCONNECTED,
      M11_AXI_arlen => NLW_axi_interconnect_0_M11_AXI_arlen_UNCONNECTED,
      M11_AXI_arlock => NLW_axi_interconnect_0_M11_AXI_arlock_UNCONNECTED,
      M11_AXI_arprot => NLW_axi_interconnect_0_M11_AXI_arprot_UNCONNECTED,
      M11_AXI_arqos => NLW_axi_interconnect_0_M11_AXI_arqos_UNCONNECTED,
      M11_AXI_arready => '0',
      M11_AXI_arregion => NLW_axi_interconnect_0_M11_AXI_arregion_UNCONNECTED,
      M11_AXI_arsize => NLW_axi_interconnect_0_M11_AXI_arsize_UNCONNECTED,
      M11_AXI_arvalid => NLW_axi_interconnect_0_M11_AXI_arvalid_UNCONNECTED,
      M11_AXI_awaddr => NLW_axi_interconnect_0_M11_AXI_awaddr_UNCONNECTED,
      M11_AXI_awburst => NLW_axi_interconnect_0_M11_AXI_awburst_UNCONNECTED,
      M11_AXI_awcache => NLW_axi_interconnect_0_M11_AXI_awcache_UNCONNECTED,
      M11_AXI_awlen => NLW_axi_interconnect_0_M11_AXI_awlen_UNCONNECTED,
      M11_AXI_awlock => NLW_axi_interconnect_0_M11_AXI_awlock_UNCONNECTED,
      M11_AXI_awprot => NLW_axi_interconnect_0_M11_AXI_awprot_UNCONNECTED,
      M11_AXI_awqos => NLW_axi_interconnect_0_M11_AXI_awqos_UNCONNECTED,
      M11_AXI_awready => '0',
      M11_AXI_awregion => NLW_axi_interconnect_0_M11_AXI_awregion_UNCONNECTED,
      M11_AXI_awsize => NLW_axi_interconnect_0_M11_AXI_awsize_UNCONNECTED,
      M11_AXI_awvalid => NLW_axi_interconnect_0_M11_AXI_awvalid_UNCONNECTED,
      M11_AXI_bready => NLW_axi_interconnect_0_M11_AXI_bready_UNCONNECTED,
      M11_AXI_bresp => '0',
      M11_AXI_bvalid => '0',
      M11_AXI_rdata => '0',
      M11_AXI_rlast => '0',
      M11_AXI_rready => NLW_axi_interconnect_0_M11_AXI_rready_UNCONNECTED,
      M11_AXI_rresp => '0',
      M11_AXI_rvalid => '0',
      M11_AXI_wdata => NLW_axi_interconnect_0_M11_AXI_wdata_UNCONNECTED,
      M11_AXI_wlast => NLW_axi_interconnect_0_M11_AXI_wlast_UNCONNECTED,
      M11_AXI_wready => '0',
      M11_AXI_wstrb => NLW_axi_interconnect_0_M11_AXI_wstrb_UNCONNECTED,
      M11_AXI_wvalid => NLW_axi_interconnect_0_M11_AXI_wvalid_UNCONNECTED,
      M12_ACLK => clk_wiz_0_clk_out3,
      M12_ARESETN(0) => vio_0_probe_out0(0),
      M12_AXI_araddr => NLW_axi_interconnect_0_M12_AXI_araddr_UNCONNECTED,
      M12_AXI_arburst => NLW_axi_interconnect_0_M12_AXI_arburst_UNCONNECTED,
      M12_AXI_arcache => NLW_axi_interconnect_0_M12_AXI_arcache_UNCONNECTED,
      M12_AXI_arlen => NLW_axi_interconnect_0_M12_AXI_arlen_UNCONNECTED,
      M12_AXI_arlock => NLW_axi_interconnect_0_M12_AXI_arlock_UNCONNECTED,
      M12_AXI_arprot => NLW_axi_interconnect_0_M12_AXI_arprot_UNCONNECTED,
      M12_AXI_arqos => NLW_axi_interconnect_0_M12_AXI_arqos_UNCONNECTED,
      M12_AXI_arready => '0',
      M12_AXI_arregion => NLW_axi_interconnect_0_M12_AXI_arregion_UNCONNECTED,
      M12_AXI_arsize => NLW_axi_interconnect_0_M12_AXI_arsize_UNCONNECTED,
      M12_AXI_arvalid => NLW_axi_interconnect_0_M12_AXI_arvalid_UNCONNECTED,
      M12_AXI_awaddr => NLW_axi_interconnect_0_M12_AXI_awaddr_UNCONNECTED,
      M12_AXI_awburst => NLW_axi_interconnect_0_M12_AXI_awburst_UNCONNECTED,
      M12_AXI_awcache => NLW_axi_interconnect_0_M12_AXI_awcache_UNCONNECTED,
      M12_AXI_awlen => NLW_axi_interconnect_0_M12_AXI_awlen_UNCONNECTED,
      M12_AXI_awlock => NLW_axi_interconnect_0_M12_AXI_awlock_UNCONNECTED,
      M12_AXI_awprot => NLW_axi_interconnect_0_M12_AXI_awprot_UNCONNECTED,
      M12_AXI_awqos => NLW_axi_interconnect_0_M12_AXI_awqos_UNCONNECTED,
      M12_AXI_awready => '0',
      M12_AXI_awregion => NLW_axi_interconnect_0_M12_AXI_awregion_UNCONNECTED,
      M12_AXI_awsize => NLW_axi_interconnect_0_M12_AXI_awsize_UNCONNECTED,
      M12_AXI_awvalid => NLW_axi_interconnect_0_M12_AXI_awvalid_UNCONNECTED,
      M12_AXI_bready => NLW_axi_interconnect_0_M12_AXI_bready_UNCONNECTED,
      M12_AXI_bresp => '0',
      M12_AXI_bvalid => '0',
      M12_AXI_rdata => '0',
      M12_AXI_rlast => '0',
      M12_AXI_rready => NLW_axi_interconnect_0_M12_AXI_rready_UNCONNECTED,
      M12_AXI_rresp => '0',
      M12_AXI_rvalid => '0',
      M12_AXI_wdata => NLW_axi_interconnect_0_M12_AXI_wdata_UNCONNECTED,
      M12_AXI_wlast => NLW_axi_interconnect_0_M12_AXI_wlast_UNCONNECTED,
      M12_AXI_wready => '0',
      M12_AXI_wstrb => NLW_axi_interconnect_0_M12_AXI_wstrb_UNCONNECTED,
      M12_AXI_wvalid => NLW_axi_interconnect_0_M12_AXI_wvalid_UNCONNECTED,
      M13_ACLK => clk_wiz_0_clk_out3,
      M13_ARESETN(0) => vio_0_probe_out0(0),
      M13_AXI_araddr => NLW_axi_interconnect_0_M13_AXI_araddr_UNCONNECTED,
      M13_AXI_arburst => NLW_axi_interconnect_0_M13_AXI_arburst_UNCONNECTED,
      M13_AXI_arcache => NLW_axi_interconnect_0_M13_AXI_arcache_UNCONNECTED,
      M13_AXI_arlen => NLW_axi_interconnect_0_M13_AXI_arlen_UNCONNECTED,
      M13_AXI_arlock => NLW_axi_interconnect_0_M13_AXI_arlock_UNCONNECTED,
      M13_AXI_arprot => NLW_axi_interconnect_0_M13_AXI_arprot_UNCONNECTED,
      M13_AXI_arqos => NLW_axi_interconnect_0_M13_AXI_arqos_UNCONNECTED,
      M13_AXI_arready => '0',
      M13_AXI_arregion => NLW_axi_interconnect_0_M13_AXI_arregion_UNCONNECTED,
      M13_AXI_arsize => NLW_axi_interconnect_0_M13_AXI_arsize_UNCONNECTED,
      M13_AXI_arvalid => NLW_axi_interconnect_0_M13_AXI_arvalid_UNCONNECTED,
      M13_AXI_awaddr => NLW_axi_interconnect_0_M13_AXI_awaddr_UNCONNECTED,
      M13_AXI_awburst => NLW_axi_interconnect_0_M13_AXI_awburst_UNCONNECTED,
      M13_AXI_awcache => NLW_axi_interconnect_0_M13_AXI_awcache_UNCONNECTED,
      M13_AXI_awlen => NLW_axi_interconnect_0_M13_AXI_awlen_UNCONNECTED,
      M13_AXI_awlock => NLW_axi_interconnect_0_M13_AXI_awlock_UNCONNECTED,
      M13_AXI_awprot => NLW_axi_interconnect_0_M13_AXI_awprot_UNCONNECTED,
      M13_AXI_awqos => NLW_axi_interconnect_0_M13_AXI_awqos_UNCONNECTED,
      M13_AXI_awready => '0',
      M13_AXI_awregion => NLW_axi_interconnect_0_M13_AXI_awregion_UNCONNECTED,
      M13_AXI_awsize => NLW_axi_interconnect_0_M13_AXI_awsize_UNCONNECTED,
      M13_AXI_awvalid => NLW_axi_interconnect_0_M13_AXI_awvalid_UNCONNECTED,
      M13_AXI_bready => NLW_axi_interconnect_0_M13_AXI_bready_UNCONNECTED,
      M13_AXI_bresp => '0',
      M13_AXI_bvalid => '0',
      M13_AXI_rdata => '0',
      M13_AXI_rlast => '0',
      M13_AXI_rready => NLW_axi_interconnect_0_M13_AXI_rready_UNCONNECTED,
      M13_AXI_rresp => '0',
      M13_AXI_rvalid => '0',
      M13_AXI_wdata => NLW_axi_interconnect_0_M13_AXI_wdata_UNCONNECTED,
      M13_AXI_wlast => NLW_axi_interconnect_0_M13_AXI_wlast_UNCONNECTED,
      M13_AXI_wready => '0',
      M13_AXI_wstrb => NLW_axi_interconnect_0_M13_AXI_wstrb_UNCONNECTED,
      M13_AXI_wvalid => NLW_axi_interconnect_0_M13_AXI_wvalid_UNCONNECTED,
      M14_ACLK => clk_wiz_0_clk_out3,
      M14_ARESETN(0) => vio_0_probe_out0(0),
      M14_AXI_araddr => NLW_axi_interconnect_0_M14_AXI_araddr_UNCONNECTED,
      M14_AXI_arburst => NLW_axi_interconnect_0_M14_AXI_arburst_UNCONNECTED,
      M14_AXI_arcache => NLW_axi_interconnect_0_M14_AXI_arcache_UNCONNECTED,
      M14_AXI_arlen => NLW_axi_interconnect_0_M14_AXI_arlen_UNCONNECTED,
      M14_AXI_arlock => NLW_axi_interconnect_0_M14_AXI_arlock_UNCONNECTED,
      M14_AXI_arprot => NLW_axi_interconnect_0_M14_AXI_arprot_UNCONNECTED,
      M14_AXI_arqos => NLW_axi_interconnect_0_M14_AXI_arqos_UNCONNECTED,
      M14_AXI_arready => '0',
      M14_AXI_arregion => NLW_axi_interconnect_0_M14_AXI_arregion_UNCONNECTED,
      M14_AXI_arsize => NLW_axi_interconnect_0_M14_AXI_arsize_UNCONNECTED,
      M14_AXI_arvalid => NLW_axi_interconnect_0_M14_AXI_arvalid_UNCONNECTED,
      M14_AXI_awaddr => NLW_axi_interconnect_0_M14_AXI_awaddr_UNCONNECTED,
      M14_AXI_awburst => NLW_axi_interconnect_0_M14_AXI_awburst_UNCONNECTED,
      M14_AXI_awcache => NLW_axi_interconnect_0_M14_AXI_awcache_UNCONNECTED,
      M14_AXI_awlen => NLW_axi_interconnect_0_M14_AXI_awlen_UNCONNECTED,
      M14_AXI_awlock => NLW_axi_interconnect_0_M14_AXI_awlock_UNCONNECTED,
      M14_AXI_awprot => NLW_axi_interconnect_0_M14_AXI_awprot_UNCONNECTED,
      M14_AXI_awqos => NLW_axi_interconnect_0_M14_AXI_awqos_UNCONNECTED,
      M14_AXI_awready => '0',
      M14_AXI_awregion => NLW_axi_interconnect_0_M14_AXI_awregion_UNCONNECTED,
      M14_AXI_awsize => NLW_axi_interconnect_0_M14_AXI_awsize_UNCONNECTED,
      M14_AXI_awvalid => NLW_axi_interconnect_0_M14_AXI_awvalid_UNCONNECTED,
      M14_AXI_bready => NLW_axi_interconnect_0_M14_AXI_bready_UNCONNECTED,
      M14_AXI_bresp => '0',
      M14_AXI_bvalid => '0',
      M14_AXI_rdata => '0',
      M14_AXI_rlast => '0',
      M14_AXI_rready => NLW_axi_interconnect_0_M14_AXI_rready_UNCONNECTED,
      M14_AXI_rresp => '0',
      M14_AXI_rvalid => '0',
      M14_AXI_wdata => NLW_axi_interconnect_0_M14_AXI_wdata_UNCONNECTED,
      M14_AXI_wlast => NLW_axi_interconnect_0_M14_AXI_wlast_UNCONNECTED,
      M14_AXI_wready => '0',
      M14_AXI_wstrb => NLW_axi_interconnect_0_M14_AXI_wstrb_UNCONNECTED,
      M14_AXI_wvalid => NLW_axi_interconnect_0_M14_AXI_wvalid_UNCONNECTED,
      S00_ACLK => clk_wiz_0_clk_out3,
      S00_ARESETN(0) => vio_0_probe_out0(0),
      S00_AXI_araddr(31 downto 0) => axi_chip2chip_0_m_axi_lite_ARADDR(31 downto 0),
      S00_AXI_arprot(1 downto 0) => axi_chip2chip_0_m_axi_lite_ARPROT(1 downto 0),
      S00_AXI_arready => axi_chip2chip_0_m_axi_lite_ARREADY,
      S00_AXI_arvalid => axi_chip2chip_0_m_axi_lite_ARVALID,
      S00_AXI_awaddr(31 downto 0) => axi_chip2chip_0_m_axi_lite_AWADDR(31 downto 0),
      S00_AXI_awprot(1 downto 0) => axi_chip2chip_0_m_axi_lite_AWPROT(1 downto 0),
      S00_AXI_awready => axi_chip2chip_0_m_axi_lite_AWREADY,
      S00_AXI_awvalid => axi_chip2chip_0_m_axi_lite_AWVALID,
      S00_AXI_bready => axi_chip2chip_0_m_axi_lite_BREADY,
      S00_AXI_bresp(1 downto 0) => axi_chip2chip_0_m_axi_lite_BRESP(1 downto 0),
      S00_AXI_bvalid => axi_chip2chip_0_m_axi_lite_BVALID,
      S00_AXI_rdata(31 downto 0) => axi_chip2chip_0_m_axi_lite_RDATA(31 downto 0),
      S00_AXI_rready => axi_chip2chip_0_m_axi_lite_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_chip2chip_0_m_axi_lite_RRESP(1 downto 0),
      S00_AXI_rvalid => axi_chip2chip_0_m_axi_lite_RVALID,
      S00_AXI_wdata(31 downto 0) => axi_chip2chip_0_m_axi_lite_WDATA(31 downto 0),
      S00_AXI_wready => axi_chip2chip_0_m_axi_lite_WREADY,
      S00_AXI_wstrb(3 downto 0) => axi_chip2chip_0_m_axi_lite_WSTRB(3 downto 0),
      S00_AXI_wvalid => axi_chip2chip_0_m_axi_lite_WVALID
    );
blk_mem_gen_0: component v7_bd_blk_mem_gen_0_0
     port map (
      addra(31 downto 16) => B"0000000000000000",
      addra(15 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(15 downto 0),
      clka => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      dina(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(31 downto 0),
      douta(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      ena => axi_bram_ctrl_0_BRAM_PORTA_EN,
      rsta => axi_bram_ctrl_0_BRAM_PORTA_RST,
      wea(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(3 downto 0)
    );
clk_wiz_0: component v7_bd_clk_wiz_0_0
     port map (
      clk_in1_n => clk_200_diff_in_1_CLK_N,
      clk_in1_p => clk_200_diff_in_1_CLK_P,
      clk_out1 => clk_wiz_0_clk_out1,
      clk_out2 => clk_wiz_0_clk_out3,
      locked => clk_wiz_0_locked
    );
proc_sys_reset_0: component v7_bd_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => axi_c2c_zynq_to_v7_reset_1,
      interconnect_aresetn(0) => ARESETN_1(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => vio_0_probe_out0(0),
      peripheral_reset(0) => NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_wiz_0_clk_out3
    );
xadc_wiz_0: component v7_bd_xadc_wiz_0_0
     port map (
      alarm_out => NLW_xadc_wiz_0_alarm_out_UNCONNECTED,
      busy_out => NLW_xadc_wiz_0_busy_out_UNCONNECTED,
      channel_out(4 downto 0) => NLW_xadc_wiz_0_channel_out_UNCONNECTED(4 downto 0),
      eoc_out => NLW_xadc_wiz_0_eoc_out_UNCONNECTED,
      eos_out => NLW_xadc_wiz_0_eos_out_UNCONNECTED,
      ip2intc_irpt => NLW_xadc_wiz_0_ip2intc_irpt_UNCONNECTED,
      s_axi_aclk => clk_wiz_0_clk_out3,
      s_axi_araddr(10 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(10 downto 0),
      s_axi_aresetn => vio_0_probe_out0(0),
      s_axi_arready => axi_interconnect_0_M00_AXI_ARREADY,
      s_axi_arvalid => axi_interconnect_0_M00_AXI_ARVALID,
      s_axi_awaddr(10 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(10 downto 0),
      s_axi_awready => axi_interconnect_0_M00_AXI_AWREADY,
      s_axi_awvalid => axi_interconnect_0_M00_AXI_AWVALID,
      s_axi_bready => axi_interconnect_0_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_interconnect_0_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_interconnect_0_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_0_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_0_M00_AXI_WVALID,
      vn_in => '0',
      vp_in => '0'
    );
end STRUCTURE;
