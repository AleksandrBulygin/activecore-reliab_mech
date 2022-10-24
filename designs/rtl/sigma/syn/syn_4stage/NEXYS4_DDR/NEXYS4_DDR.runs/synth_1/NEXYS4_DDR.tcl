# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param chipscope.maxJobs 2
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7a100tcsg324-3

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma/syn/syn_4stage/NEXYS4_DDR/NEXYS4_DDR.cache/wt [current_project]
set_property parent.project_path C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma/syn/syn_4stage/NEXYS4_DDR/NEXYS4_DDR.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma/syn/syn_4stage/NEXYS4_DDR/NEXYS4_DDR.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog {
  C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma_tile/hw/sigma_tile.svh
  C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma_tile/hw/coproc_if.svh
  C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma_tile/hw/riscv/coregen/riscv_4stage/sverilog/riscv_4stage.svh
  C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma_tile/hw/riscv/coregen/riscv_5stage/sverilog/riscv_5stage.svh
  C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma_tile/hw/riscv/coregen/riscv_1stage/sverilog/riscv_1stage.svh
  C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma_tile/hw/riscv/coregen/riscv_6stage/sverilog/riscv_6stage.svh
  C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma_tile/hw/riscv/coregen/riscv_2stage/sverilog/riscv_2stage.svh
  C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma_tile/hw/riscv/coregen/riscv_3stage/sverilog/riscv_3stage.svh
}
set_property file_type "Verilog Header" [get_files C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma_tile/hw/sigma_tile.svh]
set_property file_type "Verilog Header" [get_files C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma_tile/hw/coproc_if.svh]
set_property file_type "Verilog Header" [get_files C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma_tile/hw/riscv/coregen/riscv_4stage/sverilog/riscv_4stage.svh]
set_property file_type "Verilog Header" [get_files C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma_tile/hw/riscv/coregen/riscv_5stage/sverilog/riscv_5stage.svh]
set_property file_type "Verilog Header" [get_files C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma_tile/hw/riscv/coregen/riscv_1stage/sverilog/riscv_1stage.svh]
set_property file_type "Verilog Header" [get_files C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma_tile/hw/riscv/coregen/riscv_6stage/sverilog/riscv_6stage.svh]
set_property file_type "Verilog Header" [get_files C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma_tile/hw/riscv/coregen/riscv_2stage/sverilog/riscv_2stage.svh]
set_property file_type "Verilog Header" [get_files C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma_tile/hw/riscv/coregen/riscv_3stage/sverilog/riscv_3stage.svh]
read_verilog -library xil_defaultlib -sv {
  C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma_tile/hw/arb_1m2s.sv
  C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma_tile/hw/arb_2m1s.sv
  C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma_tile/hw/arb_2m3s.sv
  C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma_tile/hw/coproc_custom0_wrapper.sv
  C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma_tile/hw/cpu_stub.sv
  C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma_tile/hw/mul_div/genexu_MUL_DIV.sv
  C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma_tile/hw/irq_adapter.sv
  C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma_tile/hw/riscv/coregen/riscv_4stage/sverilog/riscv_4stage.sv
  C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma_tile/hw/sfr.sv
  C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma/hw/sigma.sv
  C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma_tile/hw/sigma_tile.sv
  C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma/syn/syn_4stage/NEXYS4_DDR/NEXYS4_DDR.sv
}
read_verilog -library xil_defaultlib {
  C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/debouncer/debouncer.v
  C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/ram/ram_dual.v
  C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/ram/ram_dual_memsplit.v
  C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/reset_sync/reset_sync.v
  C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma_tile/hw/mul_div/riscv_divider.v
  C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma_tile/hw/mul_div/riscv_multiplier.v
  C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/udm/hw/uart_rx.v
  C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/udm/hw/uart_tx.v
  C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/udm/hw/udm.v
  C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/udm/hw/udm_controller.v
}
read_ip -quiet C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma/syn/syn_4stage/NEXYS4_DDR/NEXYS4_DDR.srcs/sources_1/ip/sys_clk/sys_clk.xci
set_property used_in_implementation false [get_files -all c:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma/syn/syn_4stage/NEXYS4_DDR/NEXYS4_DDR.srcs/sources_1/ip/sys_clk/sys_clk_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma/syn/syn_4stage/NEXYS4_DDR/NEXYS4_DDR.srcs/sources_1/ip/sys_clk/sys_clk.xdc]
set_property used_in_implementation false [get_files -all c:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma/syn/syn_4stage/NEXYS4_DDR/NEXYS4_DDR.srcs/sources_1/ip/sys_clk/sys_clk_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma/syn/syn_4stage/NEXYS4_DDR/NEXYS4_DDR.xdc
set_property used_in_implementation false [get_files C:/Users/admin/Desktop/Projects/activecore-reliab_mech/designs/rtl/sigma/syn/syn_4stage/NEXYS4_DDR/NEXYS4_DDR.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top NEXYS4_DDR -part xc7a100tcsg324-3


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef NEXYS4_DDR.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file NEXYS4_DDR_utilization_synth.rpt -pb NEXYS4_DDR_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
