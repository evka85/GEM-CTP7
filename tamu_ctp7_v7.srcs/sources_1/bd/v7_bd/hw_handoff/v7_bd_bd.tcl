
################################################################
# This is a generated script based on design: v7_bd
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2015.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source v7_bd_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7vx690tffg1927-2

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}



# CHANGE DESIGN NAME HERE
set design_name v7_bd

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set BRAM_CTRL_DRP [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:bram_rtl:1.0 BRAM_CTRL_DRP ]
  set_property -dict [ list \
CONFIG.MASTER_TYPE {BRAM_CTRL} \
 ] $BRAM_CTRL_DRP
  set BRAM_CTRL_GTH_REG_FILE [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:bram_rtl:1.0 BRAM_CTRL_GTH_REG_FILE ]
  set_property -dict [ list \
CONFIG.MASTER_TYPE {BRAM_CTRL} \
 ] $BRAM_CTRL_GTH_REG_FILE
  set BRAM_CTRL_REG_FILE [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:bram_rtl:1.0 BRAM_CTRL_REG_FILE ]
  set_property -dict [ list \
CONFIG.MASTER_TYPE {BRAM_CTRL} \
 ] $BRAM_CTRL_REG_FILE
  set BRAM_CTRL_RX_RAM [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:bram_rtl:1.0 BRAM_CTRL_RX_RAM ]
  set_property -dict [ list \
CONFIG.MASTER_TYPE {BRAM_CTRL} \
 ] $BRAM_CTRL_RX_RAM
  set BRAM_CTRL_TX_RAM [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:bram_rtl:1.0 BRAM_CTRL_TX_RAM ]
  set_property -dict [ list \
CONFIG.MASTER_TYPE {BRAM_CTRL} \
 ] $BRAM_CTRL_TX_RAM
  set clk_200_diff_in [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 clk_200_diff_in ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {200000000} \
 ] $clk_200_diff_in
  set ipb_axi [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 ipb_axi ]
  set_property -dict [ list \
CONFIG.ADDR_WIDTH {28} \
CONFIG.DATA_WIDTH {32} \
CONFIG.FREQ_HZ {50000000} \
CONFIG.HAS_BURST {0} \
CONFIG.HAS_CACHE {0} \
CONFIG.HAS_LOCK {0} \
CONFIG.HAS_QOS {0} \
CONFIG.HAS_REGION {0} \
CONFIG.PROTOCOL {AXI4LITE} \
 ] $ipb_axi

  # Create ports
  set axi_c2c_v7_to_zynq_clk [ create_bd_port -dir O -type clk axi_c2c_v7_to_zynq_clk ]
  set axi_c2c_v7_to_zynq_data [ create_bd_port -dir O -from 14 -to 0 axi_c2c_v7_to_zynq_data ]
  set axi_c2c_v7_to_zynq_link_status [ create_bd_port -dir O axi_c2c_v7_to_zynq_link_status ]
  set axi_c2c_zynq_to_v7_clk [ create_bd_port -dir I -type clk axi_c2c_zynq_to_v7_clk ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {200000000} \
 ] $axi_c2c_zynq_to_v7_clk
  set axi_c2c_zynq_to_v7_data [ create_bd_port -dir I -from 14 -to 0 axi_c2c_zynq_to_v7_data ]
  set axi_c2c_zynq_to_v7_reset [ create_bd_port -dir I -type rst axi_c2c_zynq_to_v7_reset ]
  set axi_clk_o [ create_bd_port -dir O -type clk axi_clk_o ]
  set_property -dict [ list \
CONFIG.ASSOCIATED_BUSIF {ipb_axi} \
CONFIG.ASSOCIATED_RESET {axi_reset_o} \
CONFIG.FREQ_HZ {50000000} \
 ] $axi_clk_o
  set axi_reset_o [ create_bd_port -dir O -from 0 -to 0 -type rst axi_reset_o ]
  set clk_out1_200mhz [ create_bd_port -dir O -type clk clk_out1_200mhz ]
  set clk_out2_50mhz [ create_bd_port -dir O -type clk clk_out2_50mhz ]

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 axi_bram_ctrl_0 ]
  set_property -dict [ list \
CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_0

  # Create instance: axi_bram_ctrl_drp, and set properties
  set axi_bram_ctrl_drp [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 axi_bram_ctrl_drp ]
  set_property -dict [ list \
CONFIG.PROTOCOL {AXI4LITE} \
CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_drp

  # Create instance: axi_bram_ctrl_gth_reg_file, and set properties
  set axi_bram_ctrl_gth_reg_file [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 axi_bram_ctrl_gth_reg_file ]
  set_property -dict [ list \
CONFIG.PROTOCOL {AXI4LITE} \
CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_gth_reg_file

  # Create instance: axi_bram_ctrl_reg_file, and set properties
  set axi_bram_ctrl_reg_file [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 axi_bram_ctrl_reg_file ]
  set_property -dict [ list \
CONFIG.PROTOCOL {AXI4LITE} \
CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_reg_file

  # Create instance: axi_bram_ctrl_rx_ram, and set properties
  set axi_bram_ctrl_rx_ram [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 axi_bram_ctrl_rx_ram ]
  set_property -dict [ list \
CONFIG.PROTOCOL {AXI4LITE} \
CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_rx_ram

  # Create instance: axi_bram_ctrl_tx_ram, and set properties
  set axi_bram_ctrl_tx_ram [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 axi_bram_ctrl_tx_ram ]
  set_property -dict [ list \
CONFIG.PROTOCOL {AXI4LITE} \
CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_tx_ram

  # Create instance: axi_chip2chip_0, and set properties
  set axi_chip2chip_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_chip2chip:4.2 axi_chip2chip_0 ]
  set_property -dict [ list \
CONFIG.C_AURORA_WIDTH {64} \
CONFIG.C_AXI_ID_WIDTH {1} \
CONFIG.C_AXI_WUSER_WIDTH {1} \
CONFIG.C_COMMON_CLK {0} \
CONFIG.C_INCLUDE_AXILITE {2} \
CONFIG.C_INTERFACE_MODE {1} \
CONFIG.C_MASTER_FPGA {0} \
CONFIG.C_SELECTIO_PHY_CLK {200} \
 ] $axi_chip2chip_0

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
CONFIG.NUM_MI {15} \
CONFIG.NUM_SI {1} \
 ] $axi_interconnect_0

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 blk_mem_gen_0 ]

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.2 clk_wiz_0 ]
  set_property -dict [ list \
CONFIG.CLKIN1_JITTER_PS {50.0} \
CONFIG.CLKOUT1_DRIVES {BUFGCE} \
CONFIG.CLKOUT1_JITTER {98.146} \
CONFIG.CLKOUT1_PHASE_ERROR {89.971} \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {200} \
CONFIG.CLKOUT2_DRIVES {BUFGCE} \
CONFIG.CLKOUT2_JITTER {129.198} \
CONFIG.CLKOUT2_PHASE_ERROR {89.971} \
CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {50} \
CONFIG.CLKOUT2_USED {true} \
CONFIG.CLKOUT3_JITTER {129.198} \
CONFIG.CLKOUT3_PHASE_ERROR {89.971} \
CONFIG.CLKOUT3_USED {false} \
CONFIG.CLKOUT4_JITTER {135.255} \
CONFIG.CLKOUT4_PHASE_ERROR {89.971} \
CONFIG.NUM_OUT_CLKS {2} \
CONFIG.PRIM_IN_FREQ {200} \
CONFIG.PRIM_SOURCE {Differential_clock_capable_pin} \
CONFIG.USE_DYN_RECONFIG {false} \
CONFIG.USE_PHASE_ALIGNMENT {false} \
CONFIG.USE_RESET {false} \
CONFIG.USE_SAFE_CLOCK_STARTUP {true} \
 ] $clk_wiz_0

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]
  set_property -dict [ list \
CONFIG.C_AUX_RESET_HIGH {0} \
 ] $proc_sys_reset_0

  # Create instance: xadc_wiz_0, and set properties
  set xadc_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xadc_wiz:3.2 xadc_wiz_0 ]
  set_property -dict [ list \
CONFIG.ADC_CONVERSION_RATE {962} \
CONFIG.DCLK_FREQUENCY {50} \
CONFIG.INTERFACE_SELECTION {Enable_AXI} \
CONFIG.OT_ALARM {false} \
CONFIG.USER_TEMP_ALARM {false} \
CONFIG.VCCAUX_ALARM {false} \
CONFIG.VCCINT_ALARM {false} \
 ] $xadc_wiz_0

  # Create interface connections
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_1_BRAM_PORTA [get_bd_intf_ports BRAM_CTRL_REG_FILE] [get_bd_intf_pins axi_bram_ctrl_reg_file/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_1_BRAM_PORTA1 [get_bd_intf_ports BRAM_CTRL_RX_RAM] [get_bd_intf_pins axi_bram_ctrl_rx_ram/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_1_BRAM_PORTA2 [get_bd_intf_ports BRAM_CTRL_TX_RAM] [get_bd_intf_pins axi_bram_ctrl_tx_ram/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_1_BRAM_PORTA4 [get_bd_intf_ports BRAM_CTRL_DRP] [get_bd_intf_pins axi_bram_ctrl_drp/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_reg_file1_BRAM_PORTA [get_bd_intf_ports BRAM_CTRL_GTH_REG_FILE] [get_bd_intf_pins axi_bram_ctrl_gth_reg_file/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_chip2chip_0_m_axi_lite [get_bd_intf_pins axi_chip2chip_0/m_axi_lite] [get_bd_intf_pins axi_interconnect_0/S00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins xadc_wiz_0/s_axi_lite]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins axi_interconnect_0/M01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M02_AXI [get_bd_intf_pins axi_bram_ctrl_reg_file/S_AXI] [get_bd_intf_pins axi_interconnect_0/M02_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M03_AXI [get_bd_intf_pins axi_bram_ctrl_gth_reg_file/S_AXI] [get_bd_intf_pins axi_interconnect_0/M03_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M04_AXI [get_bd_intf_pins axi_bram_ctrl_drp/S_AXI] [get_bd_intf_pins axi_interconnect_0/M04_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M05_AXI [get_bd_intf_pins axi_bram_ctrl_rx_ram/S_AXI] [get_bd_intf_pins axi_interconnect_0/M05_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M06_AXI [get_bd_intf_pins axi_bram_ctrl_tx_ram/S_AXI] [get_bd_intf_pins axi_interconnect_0/M06_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M07_AXI [get_bd_intf_ports ipb_axi] [get_bd_intf_pins axi_interconnect_0/M07_AXI]
  connect_bd_intf_net -intf_net clk_200_diff_in_1 [get_bd_intf_ports clk_200_diff_in] [get_bd_intf_pins clk_wiz_0/CLK_IN1_D]

  # Create port connections
  connect_bd_net -net ARESETN_1 [get_bd_pins axi_chip2chip_0/m_aresetn] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins proc_sys_reset_0/interconnect_aresetn]
  connect_bd_net -net axi_c2c_zynq_to_v7_clk_1 [get_bd_ports axi_c2c_zynq_to_v7_clk] [get_bd_pins axi_chip2chip_0/axi_c2c_selio_rx_clk_in]
  connect_bd_net -net axi_c2c_zynq_to_v7_data_1 [get_bd_ports axi_c2c_zynq_to_v7_data] [get_bd_pins axi_chip2chip_0/axi_c2c_selio_rx_data_in]
  connect_bd_net -net axi_c2c_zynq_to_v7_reset_1 [get_bd_ports axi_c2c_zynq_to_v7_reset] [get_bd_pins proc_sys_reset_0/ext_reset_in]
  connect_bd_net -net axi_chip2chip_0_axi_c2c_link_status_out [get_bd_ports axi_c2c_v7_to_zynq_link_status] [get_bd_pins axi_chip2chip_0/axi_c2c_link_status_out]
  connect_bd_net -net axi_chip2chip_0_axi_c2c_selio_tx_clk_out [get_bd_ports axi_c2c_v7_to_zynq_clk] [get_bd_pins axi_chip2chip_0/axi_c2c_selio_tx_clk_out]
  connect_bd_net -net axi_chip2chip_0_axi_c2c_selio_tx_data_out [get_bd_ports axi_c2c_v7_to_zynq_data] [get_bd_pins axi_chip2chip_0/axi_c2c_selio_tx_data_out]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_ports clk_out1_200mhz] [get_bd_pins axi_chip2chip_0/idelay_ref_clk] [get_bd_pins clk_wiz_0/clk_out1]
  connect_bd_net -net clk_wiz_0_clk_out3 [get_bd_ports axi_clk_o] [get_bd_ports clk_out2_50mhz] [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_bram_ctrl_drp/s_axi_aclk] [get_bd_pins axi_bram_ctrl_gth_reg_file/s_axi_aclk] [get_bd_pins axi_bram_ctrl_reg_file/s_axi_aclk] [get_bd_pins axi_bram_ctrl_rx_ram/s_axi_aclk] [get_bd_pins axi_bram_ctrl_tx_ram/s_axi_aclk] [get_bd_pins axi_chip2chip_0/m_aclk] [get_bd_pins axi_chip2chip_0/m_axi_lite_aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/M01_ACLK] [get_bd_pins axi_interconnect_0/M02_ACLK] [get_bd_pins axi_interconnect_0/M03_ACLK] [get_bd_pins axi_interconnect_0/M04_ACLK] [get_bd_pins axi_interconnect_0/M05_ACLK] [get_bd_pins axi_interconnect_0/M06_ACLK] [get_bd_pins axi_interconnect_0/M07_ACLK] [get_bd_pins axi_interconnect_0/M08_ACLK] [get_bd_pins axi_interconnect_0/M09_ACLK] [get_bd_pins axi_interconnect_0/M10_ACLK] [get_bd_pins axi_interconnect_0/M11_ACLK] [get_bd_pins axi_interconnect_0/M12_ACLK] [get_bd_pins axi_interconnect_0/M13_ACLK] [get_bd_pins axi_interconnect_0/M14_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins clk_wiz_0/clk_out2] [get_bd_pins proc_sys_reset_0/slowest_sync_clk] [get_bd_pins xadc_wiz_0/s_axi_aclk]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins clk_wiz_0/locked] [get_bd_pins proc_sys_reset_0/dcm_locked]
  connect_bd_net -net vio_0_probe_out0 [get_bd_ports axi_reset_o] [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_bram_ctrl_drp/s_axi_aresetn] [get_bd_pins axi_bram_ctrl_gth_reg_file/s_axi_aresetn] [get_bd_pins axi_bram_ctrl_reg_file/s_axi_aresetn] [get_bd_pins axi_bram_ctrl_rx_ram/s_axi_aresetn] [get_bd_pins axi_bram_ctrl_tx_ram/s_axi_aresetn] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/M01_ARESETN] [get_bd_pins axi_interconnect_0/M02_ARESETN] [get_bd_pins axi_interconnect_0/M03_ARESETN] [get_bd_pins axi_interconnect_0/M04_ARESETN] [get_bd_pins axi_interconnect_0/M05_ARESETN] [get_bd_pins axi_interconnect_0/M06_ARESETN] [get_bd_pins axi_interconnect_0/M07_ARESETN] [get_bd_pins axi_interconnect_0/M08_ARESETN] [get_bd_pins axi_interconnect_0/M09_ARESETN] [get_bd_pins axi_interconnect_0/M10_ARESETN] [get_bd_pins axi_interconnect_0/M11_ARESETN] [get_bd_pins axi_interconnect_0/M12_ARESETN] [get_bd_pins axi_interconnect_0/M13_ARESETN] [get_bd_pins axi_interconnect_0/M14_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins xadc_wiz_0/s_axi_aresetn]

  # Create address segments
  create_bd_addr_seg -range 0x10000 -offset 0x60000000 [get_bd_addr_spaces axi_chip2chip_0/MAXI-Lite] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x10000 -offset 0x63000000 [get_bd_addr_spaces axi_chip2chip_0/MAXI-Lite] [get_bd_addr_segs axi_bram_ctrl_drp/S_AXI/Mem0] SEG_axi_bram_ctrl_drp_Mem0
  create_bd_addr_seg -range 0x20000 -offset 0x69000000 [get_bd_addr_spaces axi_chip2chip_0/MAXI-Lite] [get_bd_addr_segs axi_bram_ctrl_gth_reg_file/S_AXI/Mem0] SEG_axi_bram_ctrl_gth_reg_file_Mem0
  create_bd_addr_seg -range 0x20000 -offset 0x61020000 [get_bd_addr_spaces axi_chip2chip_0/MAXI-Lite] [get_bd_addr_segs axi_bram_ctrl_tx_ram/S_AXI/Mem0] SEG_axi_bram_ctrl_input_ram_eta_minus_Mem0
  create_bd_addr_seg -range 0x20000 -offset 0x61000000 [get_bd_addr_spaces axi_chip2chip_0/MAXI-Lite] [get_bd_addr_segs axi_bram_ctrl_rx_ram/S_AXI/Mem0] SEG_axi_bram_ctrl_input_ram_eta_plus_Mem0
  create_bd_addr_seg -range 0x20000 -offset 0x62000000 [get_bd_addr_spaces axi_chip2chip_0/MAXI-Lite] [get_bd_addr_segs axi_bram_ctrl_reg_file/S_AXI/Mem0] SEG_axi_bram_ctrl_reg_file_Mem0
  create_bd_addr_seg -range 0x10000000 -offset 0x70000000 [get_bd_addr_spaces axi_chip2chip_0/MAXI-Lite] [get_bd_addr_segs ipb_axi/Reg] SEG_ipb_axi_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x68000000 [get_bd_addr_spaces axi_chip2chip_0/MAXI-Lite] [get_bd_addr_segs xadc_wiz_0/s_axi_lite/Reg] SEG_xadc_wiz_0_Reg

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.8
#  -string -flagsOSRD
preplace port axi_clk_o -pg 1 -y 100 -defaultsOSRD
preplace port clk_out1_200mhz -pg 1 -y 1150 -defaultsOSRD
preplace port ipb_axi -pg 1 -y 80 -defaultsOSRD
preplace port clk_out2_50mhz -pg 1 -y 1170 -defaultsOSRD
preplace port BRAM_CTRL_TX_RAM -pg 1 -y 730 -defaultsOSRD
preplace port axi_c2c_v7_to_zynq_link_status -pg 1 -y 1080 -defaultsOSRD
preplace port BRAM_CTRL_RX_RAM -pg 1 -y 530 -defaultsOSRD
preplace port axi_c2c_v7_to_zynq_clk -pg 1 -y 1040 -defaultsOSRD
preplace port clk_200_diff_in -pg 1 -y 1240 -defaultsOSRD
preplace port BRAM_CTRL_REG_FILE -pg 1 -y 400 -defaultsOSRD
preplace port BRAM_CTRL_GTH_REG_FILE -pg 1 -y 270 -defaultsOSRD
preplace port BRAM_CTRL_DRP -pg 1 -y -80 -defaultsOSRD
preplace port axi_c2c_zynq_to_v7_clk -pg 1 -y 1060 -defaultsOSRD
preplace port axi_c2c_zynq_to_v7_reset -pg 1 -y 740 -defaultsOSRD
preplace portBus axi_c2c_zynq_to_v7_data -pg 1 -y 1080 -defaultsOSRD
preplace portBus axi_c2c_v7_to_zynq_data -pg 1 -y 1060 -defaultsOSRD
preplace portBus axi_reset_o -pg 1 -y 60 -defaultsOSRD
preplace inst axi_bram_ctrl_tx_ram -pg 1 -lvl 3 -y 840 -defaultsOSRD
preplace inst axi_bram_ctrl_rx_ram -pg 1 -lvl 3 -y 520 -defaultsOSRD
preplace inst axi_bram_ctrl_drp -pg 1 -lvl 3 -y -80 -defaultsOSRD
preplace inst axi_bram_ctrl_reg_file -pg 1 -lvl 3 -y 390 -defaultsOSRD
preplace inst xadc_wiz_0 -pg 1 -lvl 3 -y 680 -defaultsOSRD
preplace inst axi_bram_ctrl_gth_reg_file -pg 1 -lvl 3 -y 210 -defaultsOSRD
preplace inst proc_sys_reset_0 -pg 1 -lvl 1 -y 760 -defaultsOSRD
preplace inst blk_mem_gen_0 -pg 1 -lvl 4 -y 880 -defaultsOSRD
preplace inst axi_interconnect_0 -pg 1 -lvl 2 -y 390 -defaultsOSRD
preplace inst clk_wiz_0 -pg 1 -lvl 3 -y 1320 -defaultsOSRD
preplace inst axi_chip2chip_0 -pg 1 -lvl 3 -y 1140 -defaultsOSRD
preplace inst axi_bram_ctrl_0 -pg 1 -lvl 3 -y 970 -defaultsOSRD
preplace netloc axi_bram_ctrl_1_BRAM_PORTA1 1 3 2 NJ 520 NJ
preplace netloc axi_chip2chip_0_m_axi_lite 1 1 3 210 -10 NJ -10 1060
preplace netloc clk_wiz_0_locked 1 0 4 -160 1400 NJ 1400 NJ 1400 1060
preplace netloc axi_bram_ctrl_1_BRAM_PORTA2 1 3 2 NJ 730 NJ
preplace netloc axi_bram_ctrl_0_BRAM_PORTA 1 3 1 NJ
preplace netloc axi_bram_ctrl_1_BRAM_PORTA4 1 3 2 NJ -80 NJ
preplace netloc axi_interconnect_0_M02_AXI 1 2 1 580
preplace netloc axi_chip2chip_0_axi_c2c_link_status_out 1 3 2 NJ 1080 NJ
preplace netloc ARESETN_1 1 1 2 210 790 NJ
preplace netloc axi_interconnect_0_M07_AXI 1 2 3 NJ 80 NJ 80 N
preplace netloc clk_200_diff_in_1 1 0 3 NJ 1240 NJ 1240 NJ
preplace netloc vio_0_probe_out0 1 1 4 190 -20 600 60 NJ 60 N
preplace netloc axi_interconnect_0_M04_AXI 1 2 1 530
preplace netloc axi_c2c_zynq_to_v7_clk_1 1 0 3 NJ 1060 NJ 1060 NJ
preplace netloc clk_wiz_0_clk_out1 1 2 3 590 1250 1100 1150 NJ
preplace netloc axi_c2c_zynq_to_v7_reset_1 1 0 1 NJ
preplace netloc axi_c2c_zynq_to_v7_data_1 1 0 3 NJ 1080 NJ 1080 NJ
preplace netloc axi_interconnect_0_M05_AXI 1 2 1 570
preplace netloc axi_interconnect_0_M00_AXI 1 2 1 590
preplace netloc axi_interconnect_0_M01_AXI 1 2 1 560
preplace netloc clk_wiz_0_clk_out3 1 0 5 -160 670 200 -30 540 1390 1110 1170 NJ
preplace netloc axi_chip2chip_0_axi_c2c_selio_tx_data_out 1 3 2 NJ 1060 NJ
preplace netloc axi_bram_ctrl_1_BRAM_PORTA 1 3 2 NJ 390 NJ
preplace netloc axi_bram_ctrl_reg_file1_BRAM_PORTA 1 3 2 NJ 210 NJ
preplace netloc axi_interconnect_0_M06_AXI 1 2 1 550
preplace netloc axi_interconnect_0_M03_AXI 1 2 1 550
preplace netloc axi_chip2chip_0_axi_c2c_selio_tx_clk_out 1 3 2 NJ 1040 NJ
levelinfo -pg 1 -180 20 360 830 1270 1420 -top -150 -bot 1410
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


