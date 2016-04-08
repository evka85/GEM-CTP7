proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.cache/wt [current_project]
  set_property parent.project_path /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.xpr [current_project]
  set_property ip_repo_paths {
  /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.cache/ip
  /home/evka/code/ip_repo/myip_1.0
} [current_project]
  set_property ip_output_repo /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.cache/ip [current_project]
  add_files -quiet /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.runs/synth_1/tamu_ctp7_v7.dcp
  add_files -quiet /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.runs/fifo_gtx_rx_synth_1/fifo_gtx_rx.dcp
  set_property netlist_only true [get_files /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.runs/fifo_gtx_rx_synth_1/fifo_gtx_rx.dcp]
  add_files -quiet /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.runs/fifo_gtx_tx_synth_1/fifo_gtx_tx.dcp
  set_property netlist_only true [get_files /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.runs/fifo_gtx_tx_synth_1/fifo_gtx_tx.dcp]
  add_files -quiet /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.runs/ila_4p8g_synth_1/ila_4p8g.dcp
  set_property netlist_only true [get_files /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.runs/ila_4p8g_synth_1/ila_4p8g.dcp]
  add_files -quiet /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.runs/vio_4p8g_synth_1/vio_4p8g.dcp
  set_property netlist_only true [get_files /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.runs/vio_4p8g_synth_1/vio_4p8g.dcp]
  read_xdc -ref v7_bd_axi_chip2chip_0_0 -cells inst /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/sources_1/bd/v7_bd/ip/v7_bd_axi_chip2chip_0_0/v7_bd_axi_chip2chip_0_0.xdc
  set_property processing_order EARLY [get_files /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/sources_1/bd/v7_bd/ip/v7_bd_axi_chip2chip_0_0/v7_bd_axi_chip2chip_0_0.xdc]
  read_xdc -prop_thru_buffers -ref v7_bd_clk_wiz_0_0 -cells inst /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/sources_1/bd/v7_bd/ip/v7_bd_clk_wiz_0_0/v7_bd_clk_wiz_0_0_board.xdc
  set_property processing_order EARLY [get_files /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/sources_1/bd/v7_bd/ip/v7_bd_clk_wiz_0_0/v7_bd_clk_wiz_0_0_board.xdc]
  read_xdc -ref v7_bd_clk_wiz_0_0 -cells inst /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/sources_1/bd/v7_bd/ip/v7_bd_clk_wiz_0_0/v7_bd_clk_wiz_0_0.xdc
  set_property processing_order EARLY [get_files /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/sources_1/bd/v7_bd/ip/v7_bd_clk_wiz_0_0/v7_bd_clk_wiz_0_0.xdc]
  read_xdc -prop_thru_buffers -ref v7_bd_proc_sys_reset_0_0 /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/sources_1/bd/v7_bd/ip/v7_bd_proc_sys_reset_0_0/v7_bd_proc_sys_reset_0_0_board.xdc
  set_property processing_order EARLY [get_files /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/sources_1/bd/v7_bd/ip/v7_bd_proc_sys_reset_0_0/v7_bd_proc_sys_reset_0_0_board.xdc]
  read_xdc -ref v7_bd_proc_sys_reset_0_0 /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/sources_1/bd/v7_bd/ip/v7_bd_proc_sys_reset_0_0/v7_bd_proc_sys_reset_0_0.xdc
  set_property processing_order EARLY [get_files /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/sources_1/bd/v7_bd/ip/v7_bd_proc_sys_reset_0_0/v7_bd_proc_sys_reset_0_0.xdc]
  read_xdc -ref v7_bd_xadc_wiz_0_0 -cells U0 /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/sources_1/bd/v7_bd/ip/v7_bd_xadc_wiz_0_0/v7_bd_xadc_wiz_0_0.xdc
  set_property processing_order EARLY [get_files /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/sources_1/bd/v7_bd/ip/v7_bd_xadc_wiz_0_0/v7_bd_xadc_wiz_0_0.xdc]
  read_xdc -mode out_of_context -ref fifo_gtx_rx -cells U0 /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/sources_1/ip/fifo_gtx_rx/fifo_gtx_rx_ooc.xdc
  set_property processing_order EARLY [get_files /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/sources_1/ip/fifo_gtx_rx/fifo_gtx_rx_ooc.xdc]
  read_xdc -ref fifo_gtx_rx -cells U0 /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/sources_1/ip/fifo_gtx_rx/fifo_gtx_rx/fifo_gtx_rx.xdc
  set_property processing_order EARLY [get_files /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/sources_1/ip/fifo_gtx_rx/fifo_gtx_rx/fifo_gtx_rx.xdc]
  read_xdc -mode out_of_context -ref fifo_gtx_tx -cells U0 /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/sources_1/ip/fifo_gtx_tx/fifo_gtx_tx_ooc.xdc
  set_property processing_order EARLY [get_files /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/sources_1/ip/fifo_gtx_tx/fifo_gtx_tx_ooc.xdc]
  read_xdc -ref fifo_gtx_tx -cells U0 /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/sources_1/ip/fifo_gtx_tx/fifo_gtx_tx/fifo_gtx_tx.xdc
  set_property processing_order EARLY [get_files /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/sources_1/ip/fifo_gtx_tx/fifo_gtx_tx/fifo_gtx_tx.xdc]
  read_xdc -mode out_of_context -ref ila_4p8g /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/ila_4p8g/ip/ila_4p8g/ila_4p8g_ooc.xdc
  set_property processing_order EARLY [get_files /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/ila_4p8g/ip/ila_4p8g/ila_4p8g_ooc.xdc]
  read_xdc -ref ila_4p8g /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/ila_4p8g/ip/ila_4p8g/ila_v6_0/constraints/ila.xdc
  set_property processing_order EARLY [get_files /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/ila_4p8g/ip/ila_4p8g/ila_v6_0/constraints/ila.xdc]
  read_xdc -mode out_of_context -ref vio_4p8g /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/vio_4p8g/ip/vio_4p8g/vio_4p8g_ooc.xdc
  set_property processing_order EARLY [get_files /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/vio_4p8g/ip/vio_4p8g/vio_4p8g_ooc.xdc]
  read_xdc -ref vio_4p8g /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/vio_4p8g/ip/vio_4p8g/vio_4p8g.xdc
  set_property processing_order EARLY [get_files /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/vio_4p8g/ip/vio_4p8g/vio_4p8g.xdc]
  read_xdc /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/constrs_1/imports/new/constraints.xdc
  read_xdc -ref v7_bd_axi_chip2chip_0_0 -cells inst /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/sources_1/bd/v7_bd/ip/v7_bd_axi_chip2chip_0_0/v7_bd_axi_chip2chip_0_0_clocks.xdc
  set_property processing_order LATE [get_files /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/sources_1/bd/v7_bd/ip/v7_bd_axi_chip2chip_0_0/v7_bd_axi_chip2chip_0_0_clocks.xdc]
  read_xdc -ref v7_bd_clk_wiz_0_0 -cells inst /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/sources_1/bd/v7_bd/ip/v7_bd_clk_wiz_0_0/v7_bd_clk_wiz_0_0_late.xdc
  set_property processing_order LATE [get_files /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/sources_1/bd/v7_bd/ip/v7_bd_clk_wiz_0_0/v7_bd_clk_wiz_0_0_late.xdc]
  read_xdc -ref fifo_gtx_rx -cells U0 /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/sources_1/ip/fifo_gtx_rx/fifo_gtx_rx/fifo_gtx_rx_clocks.xdc
  set_property processing_order LATE [get_files /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/sources_1/ip/fifo_gtx_rx/fifo_gtx_rx/fifo_gtx_rx_clocks.xdc]
  read_xdc -ref fifo_gtx_tx -cells U0 /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/sources_1/ip/fifo_gtx_tx/fifo_gtx_tx/fifo_gtx_tx_clocks.xdc
  set_property processing_order LATE [get_files /home/evka/code/tamu_ctp7_v7/tamu_ctp7_v7.srcs/sources_1/ip/fifo_gtx_tx/fifo_gtx_tx/fifo_gtx_tx_clocks.xdc]
  link_design -top tamu_ctp7_v7 -part xc7vx690tffg1927-2
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  opt_design 
  write_checkpoint -force tamu_ctp7_v7_opt.dcp
  report_drc -file tamu_ctp7_v7_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  catch {write_hwdef -file tamu_ctp7_v7.hwdef}
  place_design 
  write_checkpoint -force tamu_ctp7_v7_placed.dcp
  report_io -file tamu_ctp7_v7_io_placed.rpt
  report_utilization -file tamu_ctp7_v7_utilization_placed.rpt -pb tamu_ctp7_v7_utilization_placed.pb
  report_control_sets -verbose -file tamu_ctp7_v7_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force tamu_ctp7_v7_routed.dcp
  report_drc -file tamu_ctp7_v7_drc_routed.rpt -pb tamu_ctp7_v7_drc_routed.pb
  report_timing_summary -warn_on_violation -max_paths 10 -file tamu_ctp7_v7_timing_summary_routed.rpt -rpx tamu_ctp7_v7_timing_summary_routed.rpx
  report_power -file tamu_ctp7_v7_power_routed.rpt -pb tamu_ctp7_v7_power_summary_routed.pb
  report_route_status -file tamu_ctp7_v7_route_status.rpt -pb tamu_ctp7_v7_route_status.pb
  report_clock_utilization -file tamu_ctp7_v7_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force tamu_ctp7_v7.mmi }
  write_bitstream -force tamu_ctp7_v7.bit 
  catch { write_sysdef -hwdef tamu_ctp7_v7.hwdef -bitfile tamu_ctp7_v7.bit -meminfo tamu_ctp7_v7.mmi -file tamu_ctp7_v7.sysdef }
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

