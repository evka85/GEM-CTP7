// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.3 (lin64) Build 1368829 Mon Sep 28 20:06:39 MDT 2015
// Date        : Fri Apr  8 16:09:56 2016
// Host        : evka-macpro running 64-bit Ubuntu 14.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/ila_4p8g/ip/ila_4p8g/ila_4p8g_stub.v
// Design      : ila_4p8g
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1927-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ila,Vivado 2015.3" *)
module ila_4p8g(clk, probe0, probe1, probe2, probe3, probe4)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[31:0],probe1[3:0],probe2[3:0],probe3[3:0],probe4[3:0]" */;
  input clk;
  input [31:0]probe0;
  input [3:0]probe1;
  input [3:0]probe2;
  input [3:0]probe3;
  input [3:0]probe4;
endmodule
