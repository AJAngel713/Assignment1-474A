# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a50tcsg324-3

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {C:/Users/PL/Workspace Git Hub/Assignment1-474A/Assignment1.cache/wt} [current_project]
set_property parent.project_path {C:/Users/PL/Workspace Git Hub/Assignment1-474A/Assignment1.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib {
  {C:/Users/PL/Workspace Git Hub/Assignment1-474A/Assignment1.srcs/sources_1/new/SUB.v}
  {C:/Users/PL/Workspace Git Hub/Assignment1-474A/Assignment1.srcs/sources_1/new/SHR.v}
  {C:/Users/PL/Workspace Git Hub/Assignment1-474A/Assignment1.srcs/sources_1/new/SHL.v}
  {C:/Users/PL/Workspace Git Hub/Assignment1-474A/Assignment1.srcs/sources_1/new/MUX2x1.v}
  {C:/Users/PL/Workspace Git Hub/Assignment1-474A/Assignment1.srcs/sources_1/new/COMP.v}
  {C:/Users/PL/Workspace Git Hub/Assignment1-474A/Assignment1.srcs/sources_1/new/ADD.v}
  {C:/Users/PL/Workspace Git Hub/Assignment1-474A/Assignment1.srcs/sources_1/new/REG.v}
  {C:/Users/PL/Workspace Git Hub/Assignment1-474A/Assignment1.srcs/sources_1/new/474a_circuit5.v}
}
synth_design -top circuit5 -part xc7a50tcsg324-3
write_checkpoint -noxdef circuit5.dcp
catch { report_utilization -file circuit5_utilization_synth.rpt -pb circuit5_utilization_synth.pb }
