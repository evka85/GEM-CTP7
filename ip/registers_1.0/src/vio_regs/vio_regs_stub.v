// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
// Date        : Mon Apr 11 18:01:18 2016
// Host        : evka-pc running 64-bit Ubuntu 14.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/evka/code/tamu_ctp7_v7/ip/registers_1.0/src/vio_regs/vio_regs_stub.v
// Design      : vio_regs
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1927-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2015.4" *)
module vio_regs(clk, probe_in0, probe_in1, probe_in2, probe_out0)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_in0[0:0],probe_in1[56:0],probe_in2[31:0],probe_out0[0:0]" */;
  input clk;
  input [0:0]probe_in0;
  input [56:0]probe_in1;
  input [31:0]probe_in2;
  output [0:0]probe_out0;
endmodule
