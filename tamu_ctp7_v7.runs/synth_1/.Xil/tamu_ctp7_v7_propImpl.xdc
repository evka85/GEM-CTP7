set_property SRC_FILE_INFO {cfile:/home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/sources_1/bd/v7_bd/ip/v7_bd_axi_chip2chip_0_0/v7_bd_axi_chip2chip_0_0.xdc rfile:../../../tamu_ctp7_v7.srcs/sources_1/bd/v7_bd/ip/v7_bd_axi_chip2chip_0_0/v7_bd_axi_chip2chip_0_0.xdc id:1 order:EARLY scoped_inst:i_v7_bd/axi_chip2chip_0/inst} [current_design]
set_property SRC_FILE_INFO {cfile:/home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/sources_1/bd/v7_bd/ip/v7_bd_clk_wiz_0_0/v7_bd_clk_wiz_0_0.xdc rfile:../../../tamu_ctp7_v7.srcs/sources_1/bd/v7_bd/ip/v7_bd_clk_wiz_0_0/v7_bd_clk_wiz_0_0.xdc id:2 order:EARLY scoped_inst:i_v7_bd/clk_wiz_0/inst} [current_design]
set_property SRC_FILE_INFO {cfile:/home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/constrs_1/imports/new/constraints.xdc rfile:../../../tamu_ctp7_v7.srcs/constrs_1/imports/new/constraints.xdc id:3} [current_design]
set_property SRC_FILE_INFO {cfile:/home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/sources_1/bd/v7_bd/ip/v7_bd_axi_chip2chip_0_0/v7_bd_axi_chip2chip_0_0_clocks.xdc rfile:../../../tamu_ctp7_v7.srcs/sources_1/bd/v7_bd/ip/v7_bd_axi_chip2chip_0_0/v7_bd_axi_chip2chip_0_0_clocks.xdc id:4 order:LATE scoped_inst:i_v7_bd/axi_chip2chip_0/inst} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:72 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_pins slave_fpga_gen.axi_chip2chip_slave_phy_inst/slave_sio_phy.rx_reset_sync_inst/sync_reset_out_reg/C] -datapath_only 5.000
set_property src_info {type:SCOPED_XDC file:1 line:73 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_pins slave_fpga_gen.axi_chip2chip_slave_phy_inst/axi_chip2chip_phy_init_inst/calib_error_flop_reg/C] -to [get_pins slave_fpga_gen.axi_chip2chip_slave_phy_inst/axi_chip2chip_phy_init_inst/axi_chip2chip_sync_cell_inst/sync_flop_0_reg[1]/D] -datapath_only 5.000
set_property src_info {type:SCOPED_XDC file:2 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1_p]] 0.05
set_property src_info {type:XDC file:3 line:3 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN H29 [get_ports clk_200_diff_in_clk_n]
set_property src_info {type:XDC file:3 line:12 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN A20 [get_ports {LEDs[0]}]
set_property src_info {type:XDC file:3 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN B20 [get_ports {LEDs[1]}]
set_property src_info {type:XDC file:3 line:23 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AV30 [get_ports clk_40_ttc_n_i]
set_property src_info {type:XDC file:3 line:34 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN J26 [get_ports ttc_data_n_i]
set_property src_info {type:XDC file:3 line:48 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN BD31 [get_ports axi_c2c_v7_to_zynq_clk]
set_property src_info {type:XDC file:3 line:49 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AY32 [get_ports {axi_c2c_v7_to_zynq_data[0]}]
set_property src_info {type:XDC file:3 line:50 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN BA33 [get_ports {axi_c2c_v7_to_zynq_data[1]}]
set_property src_info {type:XDC file:3 line:51 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AR31 [get_ports {axi_c2c_v7_to_zynq_data[2]}]
set_property src_info {type:XDC file:3 line:52 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AR32 [get_ports {axi_c2c_v7_to_zynq_data[3]}]
set_property src_info {type:XDC file:3 line:53 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AV32 [get_ports {axi_c2c_v7_to_zynq_data[4]}]
set_property src_info {type:XDC file:3 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AW32 [get_ports {axi_c2c_v7_to_zynq_data[5]}]
set_property src_info {type:XDC file:3 line:55 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AJ30 [get_ports {axi_c2c_v7_to_zynq_data[6]}]
set_property src_info {type:XDC file:3 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AJ31 [get_ports {axi_c2c_v7_to_zynq_data[7]}]
set_property src_info {type:XDC file:3 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AM32 [get_ports {axi_c2c_v7_to_zynq_data[8]}]
set_property src_info {type:XDC file:3 line:58 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AM33 [get_ports {axi_c2c_v7_to_zynq_data[9]}]
set_property src_info {type:XDC file:3 line:59 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN BB33 [get_ports {axi_c2c_v7_to_zynq_data[10]}]
set_property src_info {type:XDC file:3 line:60 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AV33 [get_ports {axi_c2c_v7_to_zynq_data[11]}]
set_property src_info {type:XDC file:3 line:61 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AP32 [get_ports {axi_c2c_v7_to_zynq_data[12]}]
set_property src_info {type:XDC file:3 line:62 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AN32 [get_ports {axi_c2c_v7_to_zynq_data[13]}]
set_property src_info {type:XDC file:3 line:63 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN BC34 [get_ports {axi_c2c_v7_to_zynq_data[14]}]
set_property src_info {type:XDC file:3 line:83 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AU33 [get_ports axi_c2c_zynq_to_v7_clk]
set_property src_info {type:XDC file:3 line:84 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AV34 [get_ports {axi_c2c_zynq_to_v7_data[0]}]
set_property src_info {type:XDC file:3 line:85 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AV35 [get_ports {axi_c2c_zynq_to_v7_data[1]}]
set_property src_info {type:XDC file:3 line:86 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AW34 [get_ports {axi_c2c_zynq_to_v7_data[2]}]
set_property src_info {type:XDC file:3 line:87 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AW35 [get_ports {axi_c2c_zynq_to_v7_data[3]}]
set_property src_info {type:XDC file:3 line:88 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AY33 [get_ports {axi_c2c_zynq_to_v7_data[4]}]
set_property src_info {type:XDC file:3 line:89 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AY34 [get_ports {axi_c2c_zynq_to_v7_data[5]}]
set_property src_info {type:XDC file:3 line:90 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN BA34 [get_ports {axi_c2c_zynq_to_v7_data[6]}]
set_property src_info {type:XDC file:3 line:91 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN BA35 [get_ports {axi_c2c_zynq_to_v7_data[7]}]
set_property src_info {type:XDC file:3 line:92 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN BD34 [get_ports {axi_c2c_zynq_to_v7_data[8]}]
set_property src_info {type:XDC file:3 line:93 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN BD35 [get_ports {axi_c2c_zynq_to_v7_data[9]}]
set_property src_info {type:XDC file:3 line:94 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN BB35 [get_ports {axi_c2c_zynq_to_v7_data[10]}]
set_property src_info {type:XDC file:3 line:95 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN BC35 [get_ports {axi_c2c_zynq_to_v7_data[11]}]
set_property src_info {type:XDC file:3 line:96 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN BC32 [get_ports {axi_c2c_zynq_to_v7_data[12]}]
set_property src_info {type:XDC file:3 line:97 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN BC33 [get_ports {axi_c2c_zynq_to_v7_data[13]}]
set_property src_info {type:XDC file:3 line:98 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN BD32 [get_ports {axi_c2c_zynq_to_v7_data[14]}]
set_property src_info {type:XDC file:3 line:119 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN BB31 [get_ports axi_c2c_zynq_to_v7_reset]
set_property src_info {type:XDC file:3 line:120 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN BB32 [get_ports axi_c2c_v7_to_zynq_link_status]
set_property src_info {type:XDC file:3 line:158 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN E10 [get_ports {refclk_F_0_p_i[0]}]
set_property src_info {type:XDC file:3 line:159 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN N10 [get_ports {refclk_F_0_p_i[1]}]
set_property src_info {type:XDC file:3 line:160 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AF8 [get_ports {refclk_F_0_p_i[2]}]
set_property src_info {type:XDC file:3 line:161 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AR10 [get_ports {refclk_F_0_p_i[3]}]
set_property src_info {type:XDC file:3 line:163 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN G10 [get_ports {refclk_F_1_p_i[0]}]
set_property src_info {type:XDC file:3 line:164 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN R10 [get_ports {refclk_F_1_p_i[1]}]
set_property src_info {type:XDC file:3 line:165 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AH8 [get_ports {refclk_F_1_p_i[2]}]
set_property src_info {type:XDC file:3 line:166 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AT8 [get_ports {refclk_F_1_p_i[3]}]
set_property src_info {type:XDC file:3 line:169 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AF37 [get_ports {refclk_B_0_p_i[1]}]
set_property src_info {type:XDC file:3 line:170 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN N35 [get_ports {refclk_B_0_p_i[2]}]
set_property src_info {type:XDC file:3 line:171 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN E35 [get_ports {refclk_B_0_p_i[3]}]
set_property src_info {type:XDC file:3 line:174 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AH37 [get_ports {refclk_B_1_p_i[1]}]
set_property src_info {type:XDC file:3 line:175 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN R35 [get_ports {refclk_B_1_p_i[2]}]
set_property src_info {type:XDC file:3 line:176 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN G35 [get_ports {refclk_B_1_p_i[3]}]
set_property src_info {type:XDC file:3 line:180 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y0 [get_cells {i_gth_wrapper/gen_gth_single[0].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:181 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y1 [get_cells {i_gth_wrapper/gen_gth_single[1].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:182 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y2 [get_cells {i_gth_wrapper/gen_gth_single[2].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:183 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y3 [get_cells {i_gth_wrapper/gen_gth_single[3].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:184 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y4 [get_cells {i_gth_wrapper/gen_gth_single[4].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:185 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y5 [get_cells {i_gth_wrapper/gen_gth_single[5].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:186 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y6 [get_cells {i_gth_wrapper/gen_gth_single[6].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:187 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y7 [get_cells {i_gth_wrapper/gen_gth_single[7].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:188 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y8 [get_cells {i_gth_wrapper/gen_gth_single[8].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:189 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y9 [get_cells {i_gth_wrapper/gen_gth_single[9].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:190 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y10 [get_cells {i_gth_wrapper/gen_gth_single[10].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:191 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y11 [get_cells {i_gth_wrapper/gen_gth_single[11].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:192 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y12 [get_cells {i_gth_wrapper/gen_gth_single[12].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:193 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y13 [get_cells {i_gth_wrapper/gen_gth_single[13].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:194 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y14 [get_cells {i_gth_wrapper/gen_gth_single[14].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:195 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y15 [get_cells {i_gth_wrapper/gen_gth_single[15].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:196 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y16 [get_cells {i_gth_wrapper/gen_gth_single[16].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:197 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y17 [get_cells {i_gth_wrapper/gen_gth_single[17].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:198 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y18 [get_cells {i_gth_wrapper/gen_gth_single[18].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:199 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y19 [get_cells {i_gth_wrapper/gen_gth_single[19].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:200 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y20 [get_cells {i_gth_wrapper/gen_gth_single[20].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:201 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y21 [get_cells {i_gth_wrapper/gen_gth_single[21].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:202 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y22 [get_cells {i_gth_wrapper/gen_gth_single[22].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:203 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y23 [get_cells {i_gth_wrapper/gen_gth_single[23].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:204 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y24 [get_cells {i_gth_wrapper/gen_gth_single[24].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:205 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y25 [get_cells {i_gth_wrapper/gen_gth_single[25].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:206 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y26 [get_cells {i_gth_wrapper/gen_gth_single[26].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:207 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y27 [get_cells {i_gth_wrapper/gen_gth_single[27].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:208 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y28 [get_cells {i_gth_wrapper/gen_gth_single[28].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:209 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y29 [get_cells {i_gth_wrapper/gen_gth_single[29].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:210 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y30 [get_cells {i_gth_wrapper/gen_gth_single[30].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:211 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y31 [get_cells {i_gth_wrapper/gen_gth_single[31].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:212 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y32 [get_cells {i_gth_wrapper/gen_gth_single[32].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:213 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y33 [get_cells {i_gth_wrapper/gen_gth_single[33].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:214 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y34 [get_cells {i_gth_wrapper/gen_gth_single[34].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:215 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC GTHE2_CHANNEL_X1Y35 [get_cells {i_gth_wrapper/gen_gth_single[35].gen_gth_*/i_gthe2}]
set_property src_info {type:XDC file:3 line:218 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC XADC_X0Y0 [get_cells i_v7_bd/xadc_wiz_0/U0/AXI_XADC_CORE_I/XADC_INST]
set_property src_info {type:XDC file:3 line:395 export:INPUT save:INPUT read:READ} [current_design]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property src_info {type:XDC file:3 line:396 export:INPUT save:INPUT read:READ} [current_design]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property src_info {type:XDC file:3 line:397 export:INPUT save:INPUT read:READ} [current_design]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
set_property src_info {type:XDC file:3 line:398 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port dbg_hub/clk [get_nets BRAM_CTRL_DRP_clk]
set_property src_info {type:SCOPED_XDC file:4 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells slave_fpga_gen.axi_chip2chip_slave_inst/axi_chip2chip_aw_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_gc_reg[*]] -to [get_cells slave_fpga_gen.axi_chip2chip_slave_inst/axi_chip2chip_aw_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].wr_stg_inst/Q_reg_reg[*]] -datapath_only 5.0
set_property src_info {type:SCOPED_XDC file:4 line:9 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells slave_fpga_gen.axi_chip2chip_slave_inst/axi_chip2chip_ar_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_gc_reg[*]] -to [get_cells slave_fpga_gen.axi_chip2chip_slave_inst/axi_chip2chip_ar_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].wr_stg_inst/Q_reg_reg[*]] -datapath_only 5.0
set_property src_info {type:SCOPED_XDC file:4 line:10 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells slave_fpga_gen.axi_chip2chip_slave_inst/axi_chip2chip_w_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_gc_reg[*]] -to  [get_cells slave_fpga_gen.axi_chip2chip_slave_inst/axi_chip2chip_w_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].wr_stg_inst/Q_reg_reg[*]] -datapath_only 5.0
set_property src_info {type:SCOPED_XDC file:4 line:11 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells slave_fpga_gen.axi_chip2chip_slave_inst/axi_chip2chip_r_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_gc_reg[*]] -to [get_cells slave_fpga_gen.axi_chip2chip_slave_inst/axi_chip2chip_r_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].wr_stg_inst/Q_reg_reg[*]] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins i_v7_bd/axi_chip2chip_0/inst/m_aclk]]]
set_property src_info {type:SCOPED_XDC file:4 line:13 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells slave_fpga_gen.axi_chip2chip_slave_inst/axi_chip2chip_aw_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_gc_reg[*]] -to [get_cells slave_fpga_gen.axi_chip2chip_slave_inst/axi_chip2chip_aw_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].rd_stg_inst/Q_reg_reg[*]]  -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins i_v7_bd/axi_chip2chip_0/inst/m_aclk]]]
set_property src_info {type:SCOPED_XDC file:4 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells slave_fpga_gen.axi_chip2chip_slave_inst/axi_chip2chip_ar_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_gc_reg[*]] -to [get_cells slave_fpga_gen.axi_chip2chip_slave_inst/axi_chip2chip_ar_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].rd_stg_inst/Q_reg_reg[*]]  -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins i_v7_bd/axi_chip2chip_0/inst/m_aclk]]]
set_property src_info {type:SCOPED_XDC file:4 line:15 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells slave_fpga_gen.axi_chip2chip_slave_inst/axi_chip2chip_w_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_gc_reg[*]] -to  [get_cells slave_fpga_gen.axi_chip2chip_slave_inst/axi_chip2chip_w_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].rd_stg_inst/Q_reg_reg[*]]   -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins i_v7_bd/axi_chip2chip_0/inst/m_aclk]]]
set_property src_info {type:SCOPED_XDC file:4 line:16 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells slave_fpga_gen.axi_chip2chip_slave_inst/axi_chip2chip_r_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_gc_reg[*]] -to [get_cells slave_fpga_gen.axi_chip2chip_slave_inst/axi_chip2chip_r_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].rd_stg_inst/Q_reg_reg[*]]  -datapath_only 5.0
set_property src_info {type:SCOPED_XDC file:4 line:20 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells slave_fpga_gen.axi_chip2chip_slave_inst/axi_chip2chip_b_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_gc_reg[*]] -to [get_cells slave_fpga_gen.axi_chip2chip_slave_inst/axi_chip2chip_b_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].wr_stg_inst/Q_reg_reg[*]] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins i_v7_bd/axi_chip2chip_0/inst/m_aclk]]]
set_property src_info {type:SCOPED_XDC file:4 line:22 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells slave_fpga_gen.axi_chip2chip_slave_inst/axi_chip2chip_b_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_gc_reg[*]] -to [get_cells slave_fpga_gen.axi_chip2chip_slave_inst/axi_chip2chip_b_fifo_inst/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].rd_stg_inst/Q_reg_reg[*]]  -datapath_only 5.0
set_property src_info {type:SCOPED_XDC file:4 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_disable_timing -from CLK -to O [filter [all_fanout -from [get_ports m_aclk] -flat -endpoints_only -only_cells] {PRIMITIVE_SUBGROUP==dram || PRIMITIVE_SUBGROUP==LUTRAM}]
set_property src_info {type:SCOPED_XDC file:4 line:28 export:INPUT save:INPUT read:READ} [current_design]
set_disable_timing -from CLK -to O [filter [all_fanout -from [get_pins -hier *mmcm_adv_inst/CLKOUT0] -flat -endpoints_only -only_cells] {PRIMITIVE_SUBGROUP==dram || PRIMITIVE_SUBGROUP==LUTRAM}]
set_property src_info {type:SCOPED_XDC file:4 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_disable_timing -from CLK -to O [filter [all_fanout -from [get_ports m_axi_lite_aclk] -flat -endpoints_only -only_cells] {PRIMITIVE_SUBGROUP==dram || PRIMITIVE_SUBGROUP==LUTRAM}]
set_property src_info {type:SCOPED_XDC file:4 line:35 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells axi_lite_slave_gen.axi_chip2chip_lite_slave_inst/axi_chip2chip_lite_slave_tx_fifo/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_gc_reg[*]] -to [get_cells axi_lite_slave_gen.axi_chip2chip_lite_slave_inst/axi_chip2chip_lite_slave_tx_fifo/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].wr_stg_inst/Q_reg_reg[*]] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins i_v7_bd/axi_chip2chip_0/inst/m_axi_lite_aclk]]]
set_property src_info {type:SCOPED_XDC file:4 line:37 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells axi_lite_slave_gen.axi_chip2chip_lite_slave_inst/axi_chip2chip_lite_slave_tx_fifo/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_gc_reg[*]] -to [get_cells axi_lite_slave_gen.axi_chip2chip_lite_slave_inst/axi_chip2chip_lite_slave_tx_fifo/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].rd_stg_inst/Q_reg_reg[*]]  -datapath_only 5.0
set_property src_info {type:SCOPED_XDC file:4 line:39 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells axi_lite_slave_gen.axi_chip2chip_lite_slave_inst/axi_chip2chip_lite_slave_rx_fifo/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_gc_reg[*]] -to [get_cells axi_lite_slave_gen.axi_chip2chip_lite_slave_inst/axi_chip2chip_lite_slave_rx_fifo/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].wr_stg_inst/Q_reg_reg[*]] -datapath_only  5.0
set_property src_info {type:SCOPED_XDC file:4 line:41 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells axi_lite_slave_gen.axi_chip2chip_lite_slave_inst/axi_chip2chip_lite_slave_rx_fifo/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_gc_reg[*]] -to [get_cells axi_lite_slave_gen.axi_chip2chip_lite_slave_inst/axi_chip2chip_lite_slave_rx_fifo/axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].rd_stg_inst/Q_reg_reg[*]]  -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins i_v7_bd/axi_chip2chip_0/inst/m_axi_lite_aclk]]]
set_property src_info {type:SCOPED_XDC file:4 line:45 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_pins axi_lite_slave_gen.reset_sync_lite_slv/sync_reset_out_reg/C] -to [get_pins axi_lite_slave_gen.axi_chip2chip_lite_slave_inst/fifo_reset_reg/PRE] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins i_v7_bd/axi_chip2chip_0/inst/m_axi_lite_aclk]]]