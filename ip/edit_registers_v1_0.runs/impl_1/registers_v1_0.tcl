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
  set_property webtalk.parent_dir /home/evka/code/tamu_ctp7_v7/ip/edit_registers_v1_0.cache/wt [current_project]
  set_property parent.project_path /home/evka/code/tamu_ctp7_v7/ip/edit_registers_v1_0.xpr [current_project]
  set_property ip_repo_paths {
  /home/evka/code/tamu_ctp7_v7/ip/edit_registers_v1_0.cache/ip
  /home/evka/code/tamu_ctp7_v7/ip/registers_1.0
  /home/evka/code/tamu_ctp7_v7/ip/ipbus_interface
} [current_project]
  set_property ip_output_repo /home/evka/code/tamu_ctp7_v7/ip/edit_registers_v1_0.cache/ip [current_project]
  add_files -quiet /home/evka/code/tamu_ctp7_v7/ip/edit_registers_v1_0.runs/synth_1/registers_v1_0.dcp
  add_files -quiet /home/evka/code/tamu_ctp7_v7/ip/edit_registers_v1_0.runs/ila_axi_regs_synth_1/ila_axi_regs.dcp
  set_property netlist_only true [get_files /home/evka/code/tamu_ctp7_v7/ip/edit_registers_v1_0.runs/ila_axi_regs_synth_1/ila_axi_regs.dcp]
  read_xdc -mode out_of_context -ref ila_axi_regs /home/evka/code/tamu_ctp7_v7/ip/registers_1.0/src/ila_axi_regs/ila_axi_regs_ooc.xdc
  set_property processing_order EARLY [get_files /home/evka/code/tamu_ctp7_v7/ip/registers_1.0/src/ila_axi_regs/ila_axi_regs_ooc.xdc]
  read_xdc -ref ila_axi_regs /home/evka/code/tamu_ctp7_v7/ip/registers_1.0/src/ila_axi_regs/ila_v6_0/constraints/ila.xdc
  set_property processing_order EARLY [get_files /home/evka/code/tamu_ctp7_v7/ip/registers_1.0/src/ila_axi_regs/ila_v6_0/constraints/ila.xdc]
  read_xdc /home/evka/code/tamu_ctp7_v7/ip/registers_1.0/src/constrs/registers.xdc
  link_design -top registers_v1_0 -part xc7vx690tffg1927-2
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
  write_checkpoint -force registers_v1_0_opt.dcp
  report_drc -file registers_v1_0_drc_opted.rpt
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
  catch {write_hwdef -file registers_v1_0.hwdef}
  place_design 
  write_checkpoint -force registers_v1_0_placed.dcp
  report_io -file registers_v1_0_io_placed.rpt
  report_utilization -file registers_v1_0_utilization_placed.rpt -pb registers_v1_0_utilization_placed.pb
  report_control_sets -verbose -file registers_v1_0_control_sets_placed.rpt
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
  write_checkpoint -force registers_v1_0_routed.dcp
  report_drc -file registers_v1_0_drc_routed.rpt -pb registers_v1_0_drc_routed.pb
  report_timing_summary -warn_on_violation -max_paths 10 -file registers_v1_0_timing_summary_routed.rpt -rpx registers_v1_0_timing_summary_routed.rpx
  report_power -file registers_v1_0_power_routed.rpt -pb registers_v1_0_power_summary_routed.pb
  report_route_status -file registers_v1_0_route_status.rpt -pb registers_v1_0_route_status.pb
  report_clock_utilization -file registers_v1_0_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

