-- (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: user.org:user:registers:1.0
-- IP Revision: 15

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY v7_bd_registers_0_0 IS
  PORT (
    ipb_clk_o : OUT STD_LOGIC;
    ipb_miso_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    ipb_miso_ack : IN STD_LOGIC;
    ipb_miso_err : IN STD_LOGIC;
    ipb_mosi_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ipb_mosi_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ipb_mosi_strobe : OUT STD_LOGIC;
    ipb_mosi_write : OUT STD_LOGIC;
    axi_awaddr : IN STD_LOGIC_VECTOR(26 DOWNTO 0);
    axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    axi_awvalid : IN STD_LOGIC;
    axi_awready : OUT STD_LOGIC;
    axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    axi_wvalid : IN STD_LOGIC;
    axi_wready : OUT STD_LOGIC;
    axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    axi_bvalid : OUT STD_LOGIC;
    axi_bready : IN STD_LOGIC;
    axi_araddr : IN STD_LOGIC_VECTOR(26 DOWNTO 0);
    axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    axi_arvalid : IN STD_LOGIC;
    axi_arready : OUT STD_LOGIC;
    axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    axi_rvalid : OUT STD_LOGIC;
    axi_rready : IN STD_LOGIC;
    axi_aclk : IN STD_LOGIC;
    axi_aresetn : IN STD_LOGIC
  );
END v7_bd_registers_0_0;

ARCHITECTURE v7_bd_registers_0_0_arch OF v7_bd_registers_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : string;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF v7_bd_registers_0_0_arch: ARCHITECTURE IS "yes";

  COMPONENT registers_v1_0 IS
    GENERIC (
      C_AXI_DATA_WIDTH : INTEGER; -- Width of S_AXI data bus
      C_AXI_ADDR_WIDTH : INTEGER -- Width of S_AXI address bus
    );
    PORT (
      ipb_clk_o : OUT STD_LOGIC;
      ipb_miso_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      ipb_miso_ack : IN STD_LOGIC;
      ipb_miso_err : IN STD_LOGIC;
      ipb_mosi_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ipb_mosi_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ipb_mosi_strobe : OUT STD_LOGIC;
      ipb_mosi_write : OUT STD_LOGIC;
      axi_awaddr : IN STD_LOGIC_VECTOR(26 DOWNTO 0);
      axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      axi_awvalid : IN STD_LOGIC;
      axi_awready : OUT STD_LOGIC;
      axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      axi_wvalid : IN STD_LOGIC;
      axi_wready : OUT STD_LOGIC;
      axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      axi_bvalid : OUT STD_LOGIC;
      axi_bready : IN STD_LOGIC;
      axi_araddr : IN STD_LOGIC_VECTOR(26 DOWNTO 0);
      axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      axi_arvalid : IN STD_LOGIC;
      axi_arready : OUT STD_LOGIC;
      axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      axi_rvalid : OUT STD_LOGIC;
      axi_rready : IN STD_LOGIC;
      axi_aclk : IN STD_LOGIC;
      axi_aresetn : IN STD_LOGIC
    );
  END COMPONENT registers_v1_0;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF v7_bd_registers_0_0_arch: ARCHITECTURE IS "registers_v1_0,Vivado 2015.4";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF v7_bd_registers_0_0_arch : ARCHITECTURE IS "v7_bd_registers_0_0,registers_v1_0,{}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF ipb_clk_o: SIGNAL IS "xilinx.com:signal:clock:1.0 ipb_clk_o CLK";
  ATTRIBUTE X_INTERFACE_INFO OF ipb_miso_rdata: SIGNAL IS "tamu.edu:user:ipb_miso:1.0 ipb_miso rdata";
  ATTRIBUTE X_INTERFACE_INFO OF ipb_miso_ack: SIGNAL IS "tamu.edu:user:ipb_miso:1.0 ipb_miso ack";
  ATTRIBUTE X_INTERFACE_INFO OF ipb_miso_err: SIGNAL IS "tamu.edu:user:ipb_miso:1.0 ipb_miso err";
  ATTRIBUTE X_INTERFACE_INFO OF ipb_mosi_addr: SIGNAL IS "tamu.edu:user:ipb_mosi:1.0 ipb_mosi addr";
  ATTRIBUTE X_INTERFACE_INFO OF ipb_mosi_wdata: SIGNAL IS "tamu.edu:user:ipb_mosi:1.0 ipb_mosi wdata";
  ATTRIBUTE X_INTERFACE_INFO OF ipb_mosi_strobe: SIGNAL IS "tamu.edu:user:ipb_mosi:1.0 ipb_mosi strobe";
  ATTRIBUTE X_INTERFACE_INFO OF ipb_mosi_write: SIGNAL IS "tamu.edu:user:ipb_mosi:1.0 ipb_mosi write";
  ATTRIBUTE X_INTERFACE_INFO OF axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF axi_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF axi_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 AXI_CLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 AXI_RST RST";
BEGIN
  U0 : registers_v1_0
    GENERIC MAP (
      C_AXI_DATA_WIDTH => 32,
      C_AXI_ADDR_WIDTH => 27
    )
    PORT MAP (
      ipb_clk_o => ipb_clk_o,
      ipb_miso_rdata => ipb_miso_rdata,
      ipb_miso_ack => ipb_miso_ack,
      ipb_miso_err => ipb_miso_err,
      ipb_mosi_addr => ipb_mosi_addr,
      ipb_mosi_wdata => ipb_mosi_wdata,
      ipb_mosi_strobe => ipb_mosi_strobe,
      ipb_mosi_write => ipb_mosi_write,
      axi_awaddr => axi_awaddr,
      axi_awprot => axi_awprot,
      axi_awvalid => axi_awvalid,
      axi_awready => axi_awready,
      axi_wdata => axi_wdata,
      axi_wstrb => axi_wstrb,
      axi_wvalid => axi_wvalid,
      axi_wready => axi_wready,
      axi_bresp => axi_bresp,
      axi_bvalid => axi_bvalid,
      axi_bready => axi_bready,
      axi_araddr => axi_araddr,
      axi_arprot => axi_arprot,
      axi_arvalid => axi_arvalid,
      axi_arready => axi_arready,
      axi_rdata => axi_rdata,
      axi_rresp => axi_rresp,
      axi_rvalid => axi_rvalid,
      axi_rready => axi_rready,
      axi_aclk => axi_aclk,
      axi_aresetn => axi_aresetn
    );
END v7_bd_registers_0_0_arch;
