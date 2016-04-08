// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.3 (lin64) Build 1368829 Mon Sep 28 20:06:39 MDT 2015
// Date        : Fri Apr  8 16:08:24 2016
// Host        : evka-macpro running 64-bit Ubuntu 14.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/vio_4p8g/ip/vio_4p8g/vio_4p8g_stub.v
// Design      : vio_4p8g
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1927-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "vio,Vivado 2015.3" *)
module vio_4p8g(clk, probe_in0, probe_out0)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_in0[31:0],probe_out0[0:0]" */;
  input clk;
  input [31:0]probe_in0;
  output [0:0]probe_out0;
endmodule
