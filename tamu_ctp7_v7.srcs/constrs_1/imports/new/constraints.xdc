
#---------------
set_property PACKAGE_PIN H29 [get_ports clk_200_diff_in_clk_n]

set_property IOSTANDARD LVDS [get_ports clk_200_diff_in_clk_p]
set_property IOSTANDARD LVDS [get_ports clk_200_diff_in_clk_n]

create_clock -period 5.000 [get_ports clk_200_diff_in_clk_p]

#---------------
#green
set_property PACKAGE_PIN A20 [get_ports {LEDs[0]}]
#orange
set_property PACKAGE_PIN B20 [get_ports {LEDs[1]}]

set_property IOSTANDARD LVCMOS18 [get_ports {LEDs[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {LEDs[1]}]


# ==========================================================================


set_property PACKAGE_PIN AV30 [get_ports clk_40_ttc_n_i]

set_property IOSTANDARD LVDS [get_ports clk_40_ttc_p_i]
set_property IOSTANDARD LVDS [get_ports clk_40_ttc_n_i]

## create_clock -period 24.950 -name clk_40_ttc_p_i [get_ports clk_40_ttc_p_i]

## ~40.5 MHz (over-constrained)
create_clock -period 24.691 -name clk_40_ttc_p_i [get_ports clk_40_ttc_p_i]


set_property PACKAGE_PIN J26 [get_ports ttc_data_n_i]

set_property IOSTANDARD LVDS [get_ports ttc_data_p_i]
set_property IOSTANDARD LVDS [get_ports ttc_data_n_i]



# ==========================================================================
# AXI Chip2Chip

set_property INTERNAL_VREF 0.9 [get_iobanks 16]


# AXI Chip2Chip - RX section
set_property PACKAGE_PIN BD31 [get_ports axi_c2c_v7_to_zynq_clk]
set_property PACKAGE_PIN AY32 [get_ports {axi_c2c_v7_to_zynq_data[0]}]
set_property PACKAGE_PIN BA33 [get_ports {axi_c2c_v7_to_zynq_data[1]}]
set_property PACKAGE_PIN AR31 [get_ports {axi_c2c_v7_to_zynq_data[2]}]
set_property PACKAGE_PIN AR32 [get_ports {axi_c2c_v7_to_zynq_data[3]}]
set_property PACKAGE_PIN AV32 [get_ports {axi_c2c_v7_to_zynq_data[4]}]
set_property PACKAGE_PIN AW32 [get_ports {axi_c2c_v7_to_zynq_data[5]}]
set_property PACKAGE_PIN AJ30 [get_ports {axi_c2c_v7_to_zynq_data[6]}]
set_property PACKAGE_PIN AJ31 [get_ports {axi_c2c_v7_to_zynq_data[7]}]
set_property PACKAGE_PIN AM32 [get_ports {axi_c2c_v7_to_zynq_data[8]}]
set_property PACKAGE_PIN AM33 [get_ports {axi_c2c_v7_to_zynq_data[9]}]
set_property PACKAGE_PIN BB33 [get_ports {axi_c2c_v7_to_zynq_data[10]}]
set_property PACKAGE_PIN AV33 [get_ports {axi_c2c_v7_to_zynq_data[11]}]
set_property PACKAGE_PIN AP32 [get_ports {axi_c2c_v7_to_zynq_data[12]}]
set_property PACKAGE_PIN AN32 [get_ports {axi_c2c_v7_to_zynq_data[13]}]
set_property PACKAGE_PIN BC34 [get_ports {axi_c2c_v7_to_zynq_data[14]}]

set_property IOSTANDARD HSTL_I_DCI_18 [get_ports axi_c2c_v7_to_zynq_clk]
set_property IOSTANDARD HSTL_I_DCI_18 [get_ports {axi_c2c_v7_to_zynq_data[0]}]
set_property IOSTANDARD HSTL_I_DCI_18 [get_ports {axi_c2c_v7_to_zynq_data[1]}]
set_property IOSTANDARD HSTL_I_DCI_18 [get_ports {axi_c2c_v7_to_zynq_data[2]}]
set_property IOSTANDARD HSTL_I_DCI_18 [get_ports {axi_c2c_v7_to_zynq_data[3]}]
set_property IOSTANDARD HSTL_I_DCI_18 [get_ports {axi_c2c_v7_to_zynq_data[4]}]
set_property IOSTANDARD HSTL_I_DCI_18 [get_ports {axi_c2c_v7_to_zynq_data[5]}]
set_property IOSTANDARD HSTL_I_DCI_18 [get_ports {axi_c2c_v7_to_zynq_data[6]}]
set_property IOSTANDARD HSTL_I_DCI_18 [get_ports {axi_c2c_v7_to_zynq_data[7]}]
set_property IOSTANDARD HSTL_I_DCI_18 [get_ports {axi_c2c_v7_to_zynq_data[8]}]
set_property IOSTANDARD HSTL_I_DCI_18 [get_ports {axi_c2c_v7_to_zynq_data[9]}]
set_property IOSTANDARD HSTL_I_DCI_18 [get_ports {axi_c2c_v7_to_zynq_data[10]}]
set_property IOSTANDARD HSTL_I_DCI_18 [get_ports {axi_c2c_v7_to_zynq_data[11]}]
set_property IOSTANDARD HSTL_I_DCI_18 [get_ports {axi_c2c_v7_to_zynq_data[12]}]
set_property IOSTANDARD HSTL_I_DCI_18 [get_ports {axi_c2c_v7_to_zynq_data[13]}]
set_property IOSTANDARD HSTL_I_DCI_18 [get_ports {axi_c2c_v7_to_zynq_data[14]}]

# AXI Chip2Chip - TX section
set_property PACKAGE_PIN AU33 [get_ports axi_c2c_zynq_to_v7_clk]
set_property PACKAGE_PIN AV34 [get_ports {axi_c2c_zynq_to_v7_data[0]}]
set_property PACKAGE_PIN AV35 [get_ports {axi_c2c_zynq_to_v7_data[1]}]
set_property PACKAGE_PIN AW34 [get_ports {axi_c2c_zynq_to_v7_data[2]}]
set_property PACKAGE_PIN AW35 [get_ports {axi_c2c_zynq_to_v7_data[3]}]
set_property PACKAGE_PIN AY33 [get_ports {axi_c2c_zynq_to_v7_data[4]}]
set_property PACKAGE_PIN AY34 [get_ports {axi_c2c_zynq_to_v7_data[5]}]
set_property PACKAGE_PIN BA34 [get_ports {axi_c2c_zynq_to_v7_data[6]}]
set_property PACKAGE_PIN BA35 [get_ports {axi_c2c_zynq_to_v7_data[7]}]
set_property PACKAGE_PIN BD34 [get_ports {axi_c2c_zynq_to_v7_data[8]}]
set_property PACKAGE_PIN BD35 [get_ports {axi_c2c_zynq_to_v7_data[9]}]
set_property PACKAGE_PIN BB35 [get_ports {axi_c2c_zynq_to_v7_data[10]}]
set_property PACKAGE_PIN BC35 [get_ports {axi_c2c_zynq_to_v7_data[11]}]
set_property PACKAGE_PIN BC32 [get_ports {axi_c2c_zynq_to_v7_data[12]}]
set_property PACKAGE_PIN BC33 [get_ports {axi_c2c_zynq_to_v7_data[13]}]
set_property PACKAGE_PIN BD32 [get_ports {axi_c2c_zynq_to_v7_data[14]}]

set_property IOSTANDARD HSTL_I_DCI_18 [get_ports axi_c2c_zynq_to_v7_clk]
set_property IOSTANDARD HSTL_I_DCI_18 [get_ports {axi_c2c_zynq_to_v7_data[0]}]
set_property IOSTANDARD HSTL_I_DCI_18 [get_ports {axi_c2c_zynq_to_v7_data[1]}]
set_property IOSTANDARD HSTL_I_DCI_18 [get_ports {axi_c2c_zynq_to_v7_data[2]}]
set_property IOSTANDARD HSTL_I_DCI_18 [get_ports {axi_c2c_zynq_to_v7_data[3]}]
set_property IOSTANDARD HSTL_I_DCI_18 [get_ports {axi_c2c_zynq_to_v7_data[4]}]
set_property IOSTANDARD HSTL_I_DCI_18 [get_ports {axi_c2c_zynq_to_v7_data[5]}]
set_property IOSTANDARD HSTL_I_DCI_18 [get_ports {axi_c2c_zynq_to_v7_data[6]}]
set_property IOSTANDARD HSTL_I_DCI_18 [get_ports {axi_c2c_zynq_to_v7_data[7]}]
set_property IOSTANDARD HSTL_I_DCI_18 [get_ports {axi_c2c_zynq_to_v7_data[8]}]
set_property IOSTANDARD HSTL_I_DCI_18 [get_ports {axi_c2c_zynq_to_v7_data[9]}]
set_property IOSTANDARD HSTL_I_DCI_18 [get_ports {axi_c2c_zynq_to_v7_data[10]}]
set_property IOSTANDARD HSTL_I_DCI_18 [get_ports {axi_c2c_zynq_to_v7_data[11]}]
set_property IOSTANDARD HSTL_I_DCI_18 [get_ports {axi_c2c_zynq_to_v7_data[12]}]
set_property IOSTANDARD HSTL_I_DCI_18 [get_ports {axi_c2c_zynq_to_v7_data[13]}]
set_property IOSTANDARD HSTL_I_DCI_18 [get_ports {axi_c2c_zynq_to_v7_data[14]}]


# AXI Chip2Chip - Status/Control section
set_property PACKAGE_PIN BB31 [get_ports axi_c2c_zynq_to_v7_reset]
set_property PACKAGE_PIN BB32 [get_ports axi_c2c_v7_to_zynq_link_status]

set_property IOSTANDARD HSTL_I_DCI_18 [get_ports axi_c2c_zynq_to_v7_reset]
set_property IOSTANDARD HSTL_I_DCI_18 [get_ports axi_c2c_v7_to_zynq_link_status]
# ==========================================================================

## This constraint is embedded in AXI C2C IP module
##create_clock -period 5.000 -name axi_c2c_zynq_to_v7_clk [get_ports axi_c2c_zynq_to_v7_clk]


create_generated_clock -name axi_c2c_v7_to_zynq_clk -source [get_pins system_inst/i_v7_bd/axi_chip2chip_0/inst/slave_fpga_gen.axi_chip2chip_slave_phy_inst/slave_sio_phy.axi_chip2chip_sio_output_inst/gen_oddr.oddr_clk_out_inst/C] -divide_by 1 [get_ports axi_c2c_v7_to_zynq_clk]



####################### GT reference clock constraints #########################

create_clock -period 6.250 [get_ports {refclk_F_0_p_i[0]}]
create_clock -period 6.250 [get_ports {refclk_F_0_p_i[1]}]
create_clock -period 6.250 [get_ports {refclk_F_0_p_i[2]}]
create_clock -period 6.250 [get_ports {refclk_F_0_p_i[3]}]

create_clock -period 6.250 [get_ports {refclk_F_1_p_i[0]}]
create_clock -period 6.250 [get_ports {refclk_F_1_p_i[1]}]
create_clock -period 6.250 [get_ports {refclk_F_1_p_i[2]}]
create_clock -period 6.250 [get_ports {refclk_F_1_p_i[3]}]

#create_clock -period 6.250 [get_ports {refclk_B_0_p_i[0]}]
create_clock -period 6.250 [get_ports {refclk_B_0_p_i[1]}]
create_clock -period 6.250 [get_ports {refclk_B_0_p_i[2]}]
create_clock -period 6.250 [get_ports {refclk_B_0_p_i[3]}]

#create_clock -period 6.250 [get_ports {refclk_B_1_p_i[0]}]
create_clock -period 6.250 [get_ports {refclk_B_1_p_i[1]}]
create_clock -period 6.250 [get_ports {refclk_B_1_p_i[2]}]
create_clock -period 6.250 [get_ports {refclk_B_1_p_i[3]}]

################################ RefClk Location constraints #####################

set_property PACKAGE_PIN E10 [get_ports {refclk_F_0_p_i[0]}]
set_property PACKAGE_PIN N10 [get_ports {refclk_F_0_p_i[1]}]
set_property PACKAGE_PIN AF8 [get_ports {refclk_F_0_p_i[2]}]
set_property PACKAGE_PIN AR10 [get_ports {refclk_F_0_p_i[3]}]

set_property PACKAGE_PIN G10 [get_ports {refclk_F_1_p_i[0]}]
set_property PACKAGE_PIN R10 [get_ports {refclk_F_1_p_i[1]}]
set_property PACKAGE_PIN AH8 [get_ports {refclk_F_1_p_i[2]}]
set_property PACKAGE_PIN AT8 [get_ports {refclk_F_1_p_i[3]}]

#set_property PACKAGE_PIN AR35 [get_ports  {refclk_B_0_p_i[0]}]
set_property PACKAGE_PIN AF37 [get_ports {refclk_B_0_p_i[1]}]
set_property PACKAGE_PIN N35 [get_ports {refclk_B_0_p_i[2]}]
set_property PACKAGE_PIN E35 [get_ports {refclk_B_0_p_i[3]}]

#set_property PACKAGE_PIN AT37 [get_ports  {refclk_B_1_p_i[0]}]
set_property PACKAGE_PIN AH37 [get_ports {refclk_B_1_p_i[1]}]
set_property PACKAGE_PIN R35 [get_ports {refclk_B_1_p_i[2]}]
set_property PACKAGE_PIN G35 [get_ports {refclk_B_1_p_i[3]}]

################################ GTH2_CHANNEL Location constraints  #####################

set_property LOC GTHE2_CHANNEL_X1Y0 [get_cells {i_gth_wrapper/gen_gth_single[0].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y1 [get_cells {i_gth_wrapper/gen_gth_single[1].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y2 [get_cells {i_gth_wrapper/gen_gth_single[2].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y3 [get_cells {i_gth_wrapper/gen_gth_single[3].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y4 [get_cells {i_gth_wrapper/gen_gth_single[4].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y5 [get_cells {i_gth_wrapper/gen_gth_single[5].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y6 [get_cells {i_gth_wrapper/gen_gth_single[6].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y7 [get_cells {i_gth_wrapper/gen_gth_single[7].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y8 [get_cells {i_gth_wrapper/gen_gth_single[8].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y9 [get_cells {i_gth_wrapper/gen_gth_single[9].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y10 [get_cells {i_gth_wrapper/gen_gth_single[10].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y11 [get_cells {i_gth_wrapper/gen_gth_single[11].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y12 [get_cells {i_gth_wrapper/gen_gth_single[12].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y13 [get_cells {i_gth_wrapper/gen_gth_single[13].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y14 [get_cells {i_gth_wrapper/gen_gth_single[14].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y15 [get_cells {i_gth_wrapper/gen_gth_single[15].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y16 [get_cells {i_gth_wrapper/gen_gth_single[16].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y17 [get_cells {i_gth_wrapper/gen_gth_single[17].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y18 [get_cells {i_gth_wrapper/gen_gth_single[18].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y19 [get_cells {i_gth_wrapper/gen_gth_single[19].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y20 [get_cells {i_gth_wrapper/gen_gth_single[20].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y21 [get_cells {i_gth_wrapper/gen_gth_single[21].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y22 [get_cells {i_gth_wrapper/gen_gth_single[22].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y23 [get_cells {i_gth_wrapper/gen_gth_single[23].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y24 [get_cells {i_gth_wrapper/gen_gth_single[24].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y25 [get_cells {i_gth_wrapper/gen_gth_single[25].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y26 [get_cells {i_gth_wrapper/gen_gth_single[26].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y27 [get_cells {i_gth_wrapper/gen_gth_single[27].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y28 [get_cells {i_gth_wrapper/gen_gth_single[28].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y29 [get_cells {i_gth_wrapper/gen_gth_single[29].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y30 [get_cells {i_gth_wrapper/gen_gth_single[30].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y31 [get_cells {i_gth_wrapper/gen_gth_single[31].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y32 [get_cells {i_gth_wrapper/gen_gth_single[32].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y33 [get_cells {i_gth_wrapper/gen_gth_single[33].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y34 [get_cells {i_gth_wrapper/gen_gth_single[34].gen_gth_*/i_gthe2}]
set_property LOC GTHE2_CHANNEL_X1Y35 [get_cells {i_gth_wrapper/gen_gth_single[35].gen_gth_*/i_gthe2}]


set_property LOC XADC_X0Y0 [get_cells system_inst/i_v7_bd/xadc_wiz_0/U0/AXI_XADC_CORE_I/XADC_INST]


set_false_path -to [get_cells -hierarchical -filter {NAME =~ *sync*/data_sync_reg1}]
set_false_path -to [get_cells -hierarchical -filter {NAME =~ *sync*/data_sync_reg1}]
set_false_path -to [get_cells -hierarchical -filter {NAME =~ *sync*/data_sync_reg1}]
set_false_path -to [get_cells -hierarchical -filter {NAME =~ *sync*/data_sync_reg1}]


#set_false_path -from [get_clocks -include_generated_clocks -of_objects [get_ports SYSCLK_IN]] -to [get_clocks -include_generated_clocks -of_objects [get_pins -hier -filter {name=~*gt0_gth_single_i*gthe2_i*TXOUTCLK}]]
#set_false_path -from [get_clocks -include_generated_clocks -of_objects [get_pins -hier -filter {name=~*gt0_gth_single_i*gthe2_i*TXOUTCLK}]] -to [get_clocks -include_generated_clocks -of_objects [get_ports SYSCLK_IN]]

#set_false_path -from [get_clocks -include_generated_clocks -of_objects [get_ports SYSCLK_IN]] -to [get_clocks -include_generated_clocks -of_objects [get_pins -hier -filter {name=~*gt0_gth_single_i*gthe2_i*RXOUTCLK}]]
#set_false_path -from [get_clocks -include_generated_clocks -of_objects [get_pins -hier -filter {name=~*gt0_gth_single_i*gthe2_i*RXOUTCLK}]] -to [get_clocks -include_generated_clocks -of_objects [get_ports SYSCLK_IN]]


############# Channel [0] - 3.2 Gbps TX, 3.2 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[0].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[0].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [1] - 3.2 Gbps TX, 3.2 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[1].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[1].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [2] - 3.2 Gbps TX, 3.2 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[2].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[2].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [3] - 3.2 Gbps TX, 3.2 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[3].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[3].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [4] - 3.2 Gbps TX, 3.2 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[4].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[4].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [5] - 3.2 Gbps TX, 3.2 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[5].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[5].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [6] - 3.2 Gbps TX, 3.2 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[6].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[6].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [7] - 3.2 Gbps TX, 3.2 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[7].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[7].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [8] - 3.2 Gbps TX, 3.2 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[8].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[8].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [9] - 3.2 Gbps TX, 3.2 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[9].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[9].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [10] - 3.2 Gbps TX, 3.2 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[10].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[10].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [11] - 3.2 Gbps TX, 3.2 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[11].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[11].gen_gth_*/i_gthe2*RXOUTCLK}]







############# Channel [12] - 4.8 Gbps TX, 4.8 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[12].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 4.166 [get_pins -hier -filter {name=~*gen_gth_single[12].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [12] - 4.8 Gbps TX, 4.8 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[13].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 4.166 [get_pins -hier -filter {name=~*gen_gth_single[13].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [12] - 4.8 Gbps TX, 4.8 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[14].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 4.166 [get_pins -hier -filter {name=~*gen_gth_single[14].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [12] - 4.8 Gbps TX, 4.8 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[15].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 4.166 [get_pins -hier -filter {name=~*gen_gth_single[15].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [12] - 4.8 Gbps TX, 4.8 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[16].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 4.166 [get_pins -hier -filter {name=~*gen_gth_single[16].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [12] - 4.8 Gbps TX, 4.8 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[17].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 4.166 [get_pins -hier -filter {name=~*gen_gth_single[17].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [12] - 4.8 Gbps TX, 4.8 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[18].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 4.166 [get_pins -hier -filter {name=~*gen_gth_single[18].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [12] - 4.8 Gbps TX, 4.8 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[19].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 4.166 [get_pins -hier -filter {name=~*gen_gth_single[19].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [12] - 4.8 Gbps TX, 4.8 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[20].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 4.166 [get_pins -hier -filter {name=~*gen_gth_single[20].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [12] - 4.8 Gbps TX, 4.8 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[21].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 4.166 [get_pins -hier -filter {name=~*gen_gth_single[21].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [12] - 4.8 Gbps TX, 4.8 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[22].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 4.166 [get_pins -hier -filter {name=~*gen_gth_single[22].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [12] - 4.8 Gbps TX, 4.8 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[23].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 4.166 [get_pins -hier -filter {name=~*gen_gth_single[23].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [12] - 4.8 Gbps TX, 4.8 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[24].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 4.166 [get_pins -hier -filter {name=~*gen_gth_single[24].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [12] - 4.8 Gbps TX, 4.8 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[25].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 4.166 [get_pins -hier -filter {name=~*gen_gth_single[25].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [12] - 4.8 Gbps TX, 4.8 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[26].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 4.166 [get_pins -hier -filter {name=~*gen_gth_single[26].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [12] - 4.8 Gbps TX, 4.8 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[27].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 4.166 [get_pins -hier -filter {name=~*gen_gth_single[27].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [12] - 4.8 Gbps TX, 4.8 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[28].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 4.166 [get_pins -hier -filter {name=~*gen_gth_single[28].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [12] - 4.8 Gbps TX, 4.8 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[29].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 4.166 [get_pins -hier -filter {name=~*gen_gth_single[29].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [12] - 4.8 Gbps TX, 4.8 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[30].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 4.166 [get_pins -hier -filter {name=~*gen_gth_single[30].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [12] - 4.8 Gbps TX, 4.8 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[31].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 4.166 [get_pins -hier -filter {name=~*gen_gth_single[31].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [12] - 4.8 Gbps TX, 4.8 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[32].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 4.166 [get_pins -hier -filter {name=~*gen_gth_single[32].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [12] - 4.8 Gbps TX, 4.8 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[33].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 4.166 [get_pins -hier -filter {name=~*gen_gth_single[33].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [12] - 4.8 Gbps TX, 4.8 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[34].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 4.166 [get_pins -hier -filter {name=~*gen_gth_single[34].gen_gth_*/i_gthe2*RXOUTCLK}]

############# Channel [12] - 4.8 Gbps TX, 4.8 Gbps RX #############
create_clock -period 6.250 [get_pins -hier -filter {name=~*gen_gth_single[35].gen_gth_*/i_gthe2*TXOUTCLK}]
create_clock -period 4.166 [get_pins -hier -filter {name=~*gen_gth_single[35].gen_gth_*/i_gthe2*RXOUTCLK}]

############# ############# ############# ############# ############# ############# #############
############# ############# False Path Constraints ############# ############# #############

set_clock_groups -asynchronous -group [get_clocks s_clk_40] -group [get_clocks clk_out2_v7_bd_clk_wiz_0_0]
set_clock_groups -asynchronous -group [get_clocks s_clk_160] -group [get_clocks clk_out2_v7_bd_clk_wiz_0_0]

set_clock_groups -asynchronous -group [get_clocks {i_gth_wrapper/gen_gth_single[*].*/i_gthe2/?XOUTCLK}] -group [get_clocks clk_out2_v7_bd_clk_wiz_0_0]
set_clock_groups -asynchronous -group [get_clocks {i_gth_wrapper/gen_gth_single[*].*/i_gthe2/?XOUTCLK}] -group [get_clocks s_clk_160]

set_clock_groups -asynchronous -group [get_clocks clk_out2_v7_bd_clk_wiz_0_0] -group [get_clocks clkout0]


set_property MARK_DEBUG true [get_nets {oh_reg_request_arr[0][addr][0]}]
set_property MARK_DEBUG true [get_nets {oh_reg_request_arr[0][addr][10]}]
set_property MARK_DEBUG true [get_nets {oh_reg_request_arr[0][addr][11]}]
set_property MARK_DEBUG true [get_nets {oh_reg_request_arr[0][addr][12]}]
set_property MARK_DEBUG true [get_nets {oh_reg_request_arr[0][addr][13]}]
set_property MARK_DEBUG true [get_nets {oh_reg_request_arr[0][addr][14]}]
set_property MARK_DEBUG true [get_nets {oh_reg_request_arr[0][addr][15]}]
set_property MARK_DEBUG true [get_nets {oh_reg_request_arr[0][addr][16]}]
set_property MARK_DEBUG true [get_nets {oh_reg_request_arr[0][addr][17]}]
set_property MARK_DEBUG true [get_nets {oh_reg_request_arr[0][addr][18]}]
set_property MARK_DEBUG true [get_nets {oh_reg_request_arr[0][addr][19]}]
set_property MARK_DEBUG true [get_nets {oh_reg_request_arr[0][addr][1]}]
set_property MARK_DEBUG true [get_nets {oh_reg_request_arr[0][addr][20]}]
set_property MARK_DEBUG true [get_nets {oh_reg_request_arr[0][addr][21]}]
set_property MARK_DEBUG true [get_nets {oh_reg_request_arr[0][addr][22]}]
set_property MARK_DEBUG true [get_nets {oh_reg_request_arr[0][addr][23]}]
set_property MARK_DEBUG true [get_nets {oh_reg_request_arr[0][addr][24]}]
set_property MARK_DEBUG true [get_nets {oh_reg_request_arr[0][addr][25]}]
set_property MARK_DEBUG true [get_nets {oh_reg_request_arr[0][addr][26]}]
set_property MARK_DEBUG true [get_nets {oh_reg_request_arr[0][addr][27]}]
set_property MARK_DEBUG true [get_nets {oh_reg_request_arr[0][addr][28]}]
set_property MARK_DEBUG true [get_nets {oh_reg_request_arr[0][addr][29]}]
set_property MARK_DEBUG true [get_nets {oh_reg_request_arr[0][addr][2]}]
set_property MARK_DEBUG true [get_nets {oh_reg_request_arr[0][addr][30]}]
set_property MARK_DEBUG true [get_nets {oh_reg_request_arr[0][addr][31]}]
set_property MARK_DEBUG true [get_nets {oh_reg_request_arr[0][addr][3]}]
set_property MARK_DEBUG true [get_nets {oh_reg_request_arr[0][addr][4]}]
set_property MARK_DEBUG true [get_nets {oh_reg_request_arr[0][addr][5]}]
set_property MARK_DEBUG true [get_nets {oh_reg_request_arr[0][addr][6]}]
set_property MARK_DEBUG true [get_nets {oh_reg_request_arr[0][addr][7]}]
set_property MARK_DEBUG true [get_nets {oh_reg_request_arr[0][addr][8]}]
set_property MARK_DEBUG true [get_nets {oh_reg_request_arr[0][addr][9]}]
connect_debug_port u_ila_0/clk [get_nets [list {i_gth_wrapper/i_gth_clk_bufs/clk_gth_rx_usrclk_arr_o[6]}]]
connect_debug_port u_ila_0/probe0 [get_nets [list {s_gth_rx_data_arr[6][rxnotintable][0]} {s_gth_rx_data_arr[6][rxnotintable][1]} {s_gth_rx_data_arr[6][rxnotintable][2]} {s_gth_rx_data_arr[6][rxnotintable][3]}]]
connect_debug_port u_ila_2/clk [get_nets [list {s_clk_gth_tx_usrclk_arr[6]}]]
connect_debug_port u_ila_2/probe0 [get_nets [list {s_gth_tx_data_arr[6][txdata][0]} {s_gth_tx_data_arr[6][txdata][1]} {s_gth_tx_data_arr[6][txdata][2]} {s_gth_tx_data_arr[6][txdata][3]} {s_gth_tx_data_arr[6][txdata][4]} {s_gth_tx_data_arr[6][txdata][5]} {s_gth_tx_data_arr[6][txdata][6]} {s_gth_tx_data_arr[6][txdata][7]} {s_gth_tx_data_arr[6][txdata][8]} {s_gth_tx_data_arr[6][txdata][9]} {s_gth_tx_data_arr[6][txdata][10]} {s_gth_tx_data_arr[6][txdata][11]} {s_gth_tx_data_arr[6][txdata][12]} {s_gth_tx_data_arr[6][txdata][13]} {s_gth_tx_data_arr[6][txdata][14]} {s_gth_tx_data_arr[6][txdata][15]} {s_gth_tx_data_arr[6][txdata][16]} {s_gth_tx_data_arr[6][txdata][17]} {s_gth_tx_data_arr[6][txdata][18]} {s_gth_tx_data_arr[6][txdata][19]} {s_gth_tx_data_arr[6][txdata][20]} {s_gth_tx_data_arr[6][txdata][21]} {s_gth_tx_data_arr[6][txdata][22]} {s_gth_tx_data_arr[6][txdata][23]} {s_gth_tx_data_arr[6][txdata][24]} {s_gth_tx_data_arr[6][txdata][25]} {s_gth_tx_data_arr[6][txdata][26]} {s_gth_tx_data_arr[6][txdata][27]} {s_gth_tx_data_arr[6][txdata][28]} {s_gth_tx_data_arr[6][txdata][29]} {s_gth_tx_data_arr[6][txdata][30]} {s_gth_tx_data_arr[6][txdata][31]}]]
connect_debug_port u_ila_0/probe1 [get_nets [list {s_gth_rx_data_arr[6][rxdisperr][0]} {s_gth_rx_data_arr[6][rxdisperr][1]} {s_gth_rx_data_arr[6][rxdisperr][2]} {s_gth_rx_data_arr[6][rxdisperr][3]}]]
connect_debug_port u_ila_0/probe2 [get_nets [list {s_gth_rx_data_arr[6][rxdata][0]} {s_gth_rx_data_arr[6][rxdata][1]} {s_gth_rx_data_arr[6][rxdata][2]} {s_gth_rx_data_arr[6][rxdata][3]} {s_gth_rx_data_arr[6][rxdata][4]} {s_gth_rx_data_arr[6][rxdata][5]} {s_gth_rx_data_arr[6][rxdata][6]} {s_gth_rx_data_arr[6][rxdata][7]} {s_gth_rx_data_arr[6][rxdata][8]} {s_gth_rx_data_arr[6][rxdata][9]} {s_gth_rx_data_arr[6][rxdata][10]} {s_gth_rx_data_arr[6][rxdata][11]} {s_gth_rx_data_arr[6][rxdata][12]} {s_gth_rx_data_arr[6][rxdata][13]} {s_gth_rx_data_arr[6][rxdata][14]} {s_gth_rx_data_arr[6][rxdata][15]} {s_gth_rx_data_arr[6][rxdata][16]} {s_gth_rx_data_arr[6][rxdata][17]} {s_gth_rx_data_arr[6][rxdata][18]} {s_gth_rx_data_arr[6][rxdata][19]} {s_gth_rx_data_arr[6][rxdata][20]} {s_gth_rx_data_arr[6][rxdata][21]} {s_gth_rx_data_arr[6][rxdata][22]} {s_gth_rx_data_arr[6][rxdata][23]} {s_gth_rx_data_arr[6][rxdata][24]} {s_gth_rx_data_arr[6][rxdata][25]} {s_gth_rx_data_arr[6][rxdata][26]} {s_gth_rx_data_arr[6][rxdata][27]} {s_gth_rx_data_arr[6][rxdata][28]} {s_gth_rx_data_arr[6][rxdata][29]} {s_gth_rx_data_arr[6][rxdata][30]} {s_gth_rx_data_arr[6][rxdata][31]}]]
connect_debug_port u_ila_0/probe3 [get_nets [list {s_gth_rx_data_arr[6][rxcharisk][0]} {s_gth_rx_data_arr[6][rxcharisk][1]} {s_gth_rx_data_arr[6][rxcharisk][2]} {s_gth_rx_data_arr[6][rxcharisk][3]}]]
connect_debug_port u_ila_0/probe4 [get_nets [list {s_gth_rx_data_arr[6][rxchariscomma][0]} {s_gth_rx_data_arr[6][rxchariscomma][1]} {s_gth_rx_data_arr[6][rxchariscomma][2]} {s_gth_rx_data_arr[6][rxchariscomma][3]}]]
connect_debug_port u_ila_0/probe5 [get_nets [list {s_gth_rx_data_arr[6][rxbyteisaligned]}]]
connect_debug_port u_ila_0/probe6 [get_nets [list {s_gth_rx_data_arr[6][rxbyterealign]}]]
connect_debug_port u_ila_0/probe7 [get_nets [list {s_gth_rx_data_arr[6][rxcommadet]}]]
connect_debug_port u_ila_2/probe1 [get_nets [list {s_gth_tx_data_arr[6][txcharisk][0]} {s_gth_tx_data_arr[6][txcharisk][1]} {s_gth_tx_data_arr[6][txcharisk][2]} {s_gth_tx_data_arr[6][txcharisk][3]}]]
connect_debug_port u_ila_2/probe2 [get_nets [list {s_gth_tx_data_arr[6][txchardispval][0]} {s_gth_tx_data_arr[6][txchardispval][1]} {s_gth_tx_data_arr[6][txchardispval][2]} {s_gth_tx_data_arr[6][txchardispval][3]}]]
connect_debug_port u_ila_2/probe3 [get_nets [list {s_gth_tx_data_arr[6][txchardispmode][0]} {s_gth_tx_data_arr[6][txchardispmode][1]} {s_gth_tx_data_arr[6][txchardispmode][2]} {s_gth_tx_data_arr[6][txchardispmode][3]}]]
connect_debug_port dbg_hub/clk [get_nets BRAM_CTRL_DRP_clk]

create_debug_core u_ila_0_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0_0]
set_property port_width 1 [get_debug_ports u_ila_0_0/clk]
connect_debug_port u_ila_0_0/clk [get_nets [list {system_inst/i_gth_wrapper/i_gth_clk_bufs/clk_gth_rx_usrclk_arr_o[6]}]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0_0/probe0]
set_property port_width 4 [get_debug_ports u_ila_0_0/probe0]
connect_debug_port u_ila_0_0/probe0 [get_nets [list {gth_rx_data_arr[6][rxdisperr][0]} {gth_rx_data_arr[6][rxdisperr][1]} {gth_rx_data_arr[6][rxdisperr][2]} {gth_rx_data_arr[6][rxdisperr][3]}]]
create_debug_core u_ila_1 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_1]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_1]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_1]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_1]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_1]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_1]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_1]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_1]
set_property port_width 1 [get_debug_ports u_ila_1/clk]
connect_debug_port u_ila_1/clk [get_nets [list {system_inst/oh_reg_request_arr[6][axi_reg_clk]}]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe0]
set_property port_width 32 [get_debug_ports u_ila_1/probe0]
connect_debug_port u_ila_1/probe0 [get_nets [list {oh_reg_response_arr[6][data][0]} {oh_reg_response_arr[6][data][1]} {oh_reg_response_arr[6][data][2]} {oh_reg_response_arr[6][data][3]} {oh_reg_response_arr[6][data][4]} {oh_reg_response_arr[6][data][5]} {oh_reg_response_arr[6][data][6]} {oh_reg_response_arr[6][data][7]} {oh_reg_response_arr[6][data][8]} {oh_reg_response_arr[6][data][9]} {oh_reg_response_arr[6][data][10]} {oh_reg_response_arr[6][data][11]} {oh_reg_response_arr[6][data][12]} {oh_reg_response_arr[6][data][13]} {oh_reg_response_arr[6][data][14]} {oh_reg_response_arr[6][data][15]} {oh_reg_response_arr[6][data][16]} {oh_reg_response_arr[6][data][17]} {oh_reg_response_arr[6][data][18]} {oh_reg_response_arr[6][data][19]} {oh_reg_response_arr[6][data][20]} {oh_reg_response_arr[6][data][21]} {oh_reg_response_arr[6][data][22]} {oh_reg_response_arr[6][data][23]} {oh_reg_response_arr[6][data][24]} {oh_reg_response_arr[6][data][25]} {oh_reg_response_arr[6][data][26]} {oh_reg_response_arr[6][data][27]} {oh_reg_response_arr[6][data][28]} {oh_reg_response_arr[6][data][29]} {oh_reg_response_arr[6][data][30]} {oh_reg_response_arr[6][data][31]}]]
create_debug_port u_ila_0_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0_0/probe1]
set_property port_width 32 [get_debug_ports u_ila_0_0/probe1]
connect_debug_port u_ila_0_0/probe1 [get_nets [list {gth_rx_data_arr[6][rxdata][0]} {gth_rx_data_arr[6][rxdata][1]} {gth_rx_data_arr[6][rxdata][2]} {gth_rx_data_arr[6][rxdata][3]} {gth_rx_data_arr[6][rxdata][4]} {gth_rx_data_arr[6][rxdata][5]} {gth_rx_data_arr[6][rxdata][6]} {gth_rx_data_arr[6][rxdata][7]} {gth_rx_data_arr[6][rxdata][8]} {gth_rx_data_arr[6][rxdata][9]} {gth_rx_data_arr[6][rxdata][10]} {gth_rx_data_arr[6][rxdata][11]} {gth_rx_data_arr[6][rxdata][12]} {gth_rx_data_arr[6][rxdata][13]} {gth_rx_data_arr[6][rxdata][14]} {gth_rx_data_arr[6][rxdata][15]} {gth_rx_data_arr[6][rxdata][16]} {gth_rx_data_arr[6][rxdata][17]} {gth_rx_data_arr[6][rxdata][18]} {gth_rx_data_arr[6][rxdata][19]} {gth_rx_data_arr[6][rxdata][20]} {gth_rx_data_arr[6][rxdata][21]} {gth_rx_data_arr[6][rxdata][22]} {gth_rx_data_arr[6][rxdata][23]} {gth_rx_data_arr[6][rxdata][24]} {gth_rx_data_arr[6][rxdata][25]} {gth_rx_data_arr[6][rxdata][26]} {gth_rx_data_arr[6][rxdata][27]} {gth_rx_data_arr[6][rxdata][28]} {gth_rx_data_arr[6][rxdata][29]} {gth_rx_data_arr[6][rxdata][30]} {gth_rx_data_arr[6][rxdata][31]}]]
create_debug_port u_ila_0_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0_0/probe2]
set_property port_width 4 [get_debug_ports u_ila_0_0/probe2]
connect_debug_port u_ila_0_0/probe2 [get_nets [list {gth_rx_data_arr[6][rxnotintable][0]} {gth_rx_data_arr[6][rxnotintable][1]} {gth_rx_data_arr[6][rxnotintable][2]} {gth_rx_data_arr[6][rxnotintable][3]}]]
create_debug_port u_ila_0_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0_0/probe3]
set_property port_width 4 [get_debug_ports u_ila_0_0/probe3]
connect_debug_port u_ila_0_0/probe3 [get_nets [list {gth_rx_data_arr[6][rxcharisk][0]} {gth_rx_data_arr[6][rxcharisk][1]} {gth_rx_data_arr[6][rxcharisk][2]} {gth_rx_data_arr[6][rxcharisk][3]}]]
create_debug_port u_ila_0_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0_0/probe4]
set_property port_width 4 [get_debug_ports u_ila_0_0/probe4]
connect_debug_port u_ila_0_0/probe4 [get_nets [list {gth_rx_data_arr[6][rxchariscomma][0]} {gth_rx_data_arr[6][rxchariscomma][1]} {gth_rx_data_arr[6][rxchariscomma][2]} {gth_rx_data_arr[6][rxchariscomma][3]}]]
create_debug_port u_ila_0_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0_0/probe5]
connect_debug_port u_ila_0_0/probe5 [get_nets [list {gth_rx_data_arr[6][rxbyteisaligned]}]]
create_debug_port u_ila_0_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0_0/probe6]
connect_debug_port u_ila_0_0/probe6 [get_nets [list {gth_rx_data_arr[6][rxbyterealign]}]]
create_debug_port u_ila_0_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0_0/probe7]
connect_debug_port u_ila_0_0/probe7 [get_nets [list {gth_rx_data_arr[6][rxcommadet]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe1]
set_property port_width 32 [get_debug_ports u_ila_1/probe1]
connect_debug_port u_ila_1/probe1 [get_nets [list {oh_reg_request_arr[6][data][0]} {oh_reg_request_arr[6][data][1]} {oh_reg_request_arr[6][data][2]} {oh_reg_request_arr[6][data][3]} {oh_reg_request_arr[6][data][4]} {oh_reg_request_arr[6][data][5]} {oh_reg_request_arr[6][data][6]} {oh_reg_request_arr[6][data][7]} {oh_reg_request_arr[6][data][8]} {oh_reg_request_arr[6][data][9]} {oh_reg_request_arr[6][data][10]} {oh_reg_request_arr[6][data][11]} {oh_reg_request_arr[6][data][12]} {oh_reg_request_arr[6][data][13]} {oh_reg_request_arr[6][data][14]} {oh_reg_request_arr[6][data][15]} {oh_reg_request_arr[6][data][16]} {oh_reg_request_arr[6][data][17]} {oh_reg_request_arr[6][data][18]} {oh_reg_request_arr[6][data][19]} {oh_reg_request_arr[6][data][20]} {oh_reg_request_arr[6][data][21]} {oh_reg_request_arr[6][data][22]} {oh_reg_request_arr[6][data][23]} {oh_reg_request_arr[6][data][24]} {oh_reg_request_arr[6][data][25]} {oh_reg_request_arr[6][data][26]} {oh_reg_request_arr[6][data][27]} {oh_reg_request_arr[6][data][28]} {oh_reg_request_arr[6][data][29]} {oh_reg_request_arr[6][data][30]} {oh_reg_request_arr[6][data][31]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe2]
set_property port_width 32 [get_debug_ports u_ila_1/probe2]
connect_debug_port u_ila_1/probe2 [get_nets [list {oh_reg_request_arr[6][addr][0]} {oh_reg_request_arr[6][addr][1]} {oh_reg_request_arr[6][addr][2]} {oh_reg_request_arr[6][addr][3]} {oh_reg_request_arr[6][addr][4]} {oh_reg_request_arr[6][addr][5]} {oh_reg_request_arr[6][addr][6]} {oh_reg_request_arr[6][addr][7]} {oh_reg_request_arr[6][addr][8]} {oh_reg_request_arr[6][addr][9]} {oh_reg_request_arr[6][addr][10]} {oh_reg_request_arr[6][addr][11]} {oh_reg_request_arr[6][addr][12]} {oh_reg_request_arr[6][addr][13]} {oh_reg_request_arr[6][addr][14]} {oh_reg_request_arr[6][addr][15]} {oh_reg_request_arr[6][addr][16]} {oh_reg_request_arr[6][addr][17]} {oh_reg_request_arr[6][addr][18]} {oh_reg_request_arr[6][addr][19]} {oh_reg_request_arr[6][addr][20]} {oh_reg_request_arr[6][addr][21]} {oh_reg_request_arr[6][addr][22]} {oh_reg_request_arr[6][addr][23]} {oh_reg_request_arr[6][addr][24]} {oh_reg_request_arr[6][addr][25]} {oh_reg_request_arr[6][addr][26]} {oh_reg_request_arr[6][addr][27]} {oh_reg_request_arr[6][addr][28]} {oh_reg_request_arr[6][addr][29]} {oh_reg_request_arr[6][addr][30]} {oh_reg_request_arr[6][addr][31]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe3]
set_property port_width 1 [get_debug_ports u_ila_1/probe3]
connect_debug_port u_ila_1/probe3 [get_nets [list {oh_reg_request_arr[6][axi_reg_clk]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe4]
set_property port_width 1 [get_debug_ports u_ila_1/probe4]
connect_debug_port u_ila_1/probe4 [get_nets [list {oh_reg_request_arr[6][en]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe5]
set_property port_width 1 [get_debug_ports u_ila_1/probe5]
connect_debug_port u_ila_1/probe5 [get_nets [list {oh_reg_request_arr[6][we]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe6]
set_property port_width 1 [get_debug_ports u_ila_1/probe6]
connect_debug_port u_ila_1/probe6 [get_nets [list {oh_reg_response_arr[6][en]}]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk_gth_rx_arr[6]]
