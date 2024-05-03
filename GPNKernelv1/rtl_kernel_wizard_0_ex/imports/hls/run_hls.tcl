# This is a generated file. Use and modify at your own risk.
################################################################################

open_project prj
open_solution sol -flow_target vitis
set_part xcu280-fsvh2892-2L-e
add_files ../rtl_kernel_wizard_0_cmodel.cpp
set_top rtl_kernel_wizard_0
csynth_design
exit

