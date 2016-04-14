// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
// Date        : Wed Apr 13 12:36:13 2016
// Host        : evka-pc running 64-bit Ubuntu 14.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/sources_1/bd/v7_bd/ip/v7_bd_axi_chip2chip_0_0/v7_bd_axi_chip2chip_0_0_stub.v
// Design      : v7_bd_axi_chip2chip_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1927-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_chip2chip_v4_2_7,Vivado 2015.4" *)
module v7_bd_axi_chip2chip_0_0(m_aclk, m_aresetn, m_axi_awid, m_axi_awaddr, m_axi_awlen, m_axi_awsize, m_axi_awburst, m_axi_awvalid, m_axi_awready, m_axi_wuser, m_axi_wdata, m_axi_wstrb, m_axi_wlast, m_axi_wvalid, m_axi_wready, m_axi_bid, m_axi_bresp, m_axi_bvalid, m_axi_bready, m_axi_arid, m_axi_araddr, m_axi_arlen, m_axi_arsize, m_axi_arburst, m_axi_arvalid, m_axi_arready, m_axi_rid, m_axi_rdata, m_axi_rresp, m_axi_rlast, m_axi_rvalid, m_axi_rready, axi_c2c_s2m_intr_in, axi_c2c_m2s_intr_out, idelay_ref_clk, axi_c2c_selio_tx_clk_out, axi_c2c_selio_tx_data_out, axi_c2c_selio_rx_clk_in, axi_c2c_selio_rx_data_in, axi_c2c_link_status_out, axi_c2c_multi_bit_error_out, m_axi_lite_aclk, m_axi_lite_awaddr, m_axi_lite_awprot, m_axi_lite_awvalid, m_axi_lite_awready, m_axi_lite_wdata, m_axi_lite_wstrb, m_axi_lite_wvalid, m_axi_lite_wready, m_axi_lite_bresp, m_axi_lite_bvalid, m_axi_lite_bready, m_axi_lite_araddr, m_axi_lite_arprot, m_axi_lite_arvalid, m_axi_lite_arready, m_axi_lite_rdata, m_axi_lite_rresp, m_axi_lite_rvalid, m_axi_lite_rready)
/* synthesis syn_black_box black_box_pad_pin="m_aclk,m_aresetn,m_axi_awid[0:0],m_axi_awaddr[31:0],m_axi_awlen[7:0],m_axi_awsize[2:0],m_axi_awburst[1:0],m_axi_awvalid,m_axi_awready,m_axi_wuser[0:0],m_axi_wdata[31:0],m_axi_wstrb[3:0],m_axi_wlast,m_axi_wvalid,m_axi_wready,m_axi_bid[0:0],m_axi_bresp[1:0],m_axi_bvalid,m_axi_bready,m_axi_arid[0:0],m_axi_araddr[31:0],m_axi_arlen[7:0],m_axi_arsize[2:0],m_axi_arburst[1:0],m_axi_arvalid,m_axi_arready,m_axi_rid[0:0],m_axi_rdata[31:0],m_axi_rresp[1:0],m_axi_rlast,m_axi_rvalid,m_axi_rready,axi_c2c_s2m_intr_in[3:0],axi_c2c_m2s_intr_out[3:0],idelay_ref_clk,axi_c2c_selio_tx_clk_out,axi_c2c_selio_tx_data_out[14:0],axi_c2c_selio_rx_clk_in,axi_c2c_selio_rx_data_in[14:0],axi_c2c_link_status_out,axi_c2c_multi_bit_error_out,m_axi_lite_aclk,m_axi_lite_awaddr[31:0],m_axi_lite_awprot[1:0],m_axi_lite_awvalid,m_axi_lite_awready,m_axi_lite_wdata[31:0],m_axi_lite_wstrb[3:0],m_axi_lite_wvalid,m_axi_lite_wready,m_axi_lite_bresp[1:0],m_axi_lite_bvalid,m_axi_lite_bready,m_axi_lite_araddr[31:0],m_axi_lite_arprot[1:0],m_axi_lite_arvalid,m_axi_lite_arready,m_axi_lite_rdata[31:0],m_axi_lite_rresp[1:0],m_axi_lite_rvalid,m_axi_lite_rready" */;
  input m_aclk;
  input m_aresetn;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wuser;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;
  input [3:0]axi_c2c_s2m_intr_in;
  output [3:0]axi_c2c_m2s_intr_out;
  input idelay_ref_clk;
  output axi_c2c_selio_tx_clk_out;
  output [14:0]axi_c2c_selio_tx_data_out;
  input axi_c2c_selio_rx_clk_in;
  input [14:0]axi_c2c_selio_rx_data_in;
  output axi_c2c_link_status_out;
  output axi_c2c_multi_bit_error_out;
  input m_axi_lite_aclk;
  output [31:0]m_axi_lite_awaddr;
  output [1:0]m_axi_lite_awprot;
  output m_axi_lite_awvalid;
  input m_axi_lite_awready;
  output [31:0]m_axi_lite_wdata;
  output [3:0]m_axi_lite_wstrb;
  output m_axi_lite_wvalid;
  input m_axi_lite_wready;
  input [1:0]m_axi_lite_bresp;
  input m_axi_lite_bvalid;
  output m_axi_lite_bready;
  output [31:0]m_axi_lite_araddr;
  output [1:0]m_axi_lite_arprot;
  output m_axi_lite_arvalid;
  input m_axi_lite_arready;
  input [31:0]m_axi_lite_rdata;
  input [1:0]m_axi_lite_rresp;
  input m_axi_lite_rvalid;
  output m_axi_lite_rready;
endmodule
