// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
// Date        : Wed Apr 13 12:32:50 2016
// Host        : evka-pc running 64-bit Ubuntu 14.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/sources_1/bd/v7_bd/ip/v7_bd_clk_wiz_0_0/v7_bd_clk_wiz_0_0_stub.v
// Design      : v7_bd_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1927-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module v7_bd_clk_wiz_0_0(clk_in1_p, clk_in1_n, clk_out1, clk_out2, locked)
/* synthesis syn_black_box black_box_pad_pin="clk_in1_p,clk_in1_n,clk_out1,clk_out2,locked" */;
  input clk_in1_p;
  input clk_in1_n;
  output clk_out1;
  output clk_out2;
  output locked;
endmodule
