#Project name: Integrator
#Author: Phan Van Chien
#Technology: X-FAB 180nm CMOS, XT018 1243
#Library: D_CELLS_5V, 3.3 V
#Description: Integrate the input value with a resolution of 22 bits

1. **Source** Folder Logs contains logs files generated during synthesis and topology generation: 
*synthesis_typ.log* : Logs files for typical case
*+synthesis_min.log* : Logs files for min case
+synthesis_max.log : Logs files for max case
+layout.log	   : Logs files for topology generation 
-Folder Outputs contains all generated files:
	+integrator.def :  Design Exchange Format (DEF) file
	+integrator.sdf	:  Standard Delay Format (SDF) file
	+netlist.v      :  netlists for simulation and physical one
	+Folder Synthesis: Synth.v, Synth_out.sdc, Synth_min.v, Synth_out_min.sdc, Synth_max.v, Synth_out_max.sdc
-Folder Reports contains all reports from both synthesis and layout design stages:
	+Synth_area_report     : Reports area for typical case
	+Synth_area_report_min : Reports area for min case
	+Synth_area_report_max : Reports area for max case
	+Synth_timing_report     : Reports timing for typical case
	+Synth_timing_report_min : Reports timing for min case
	+Synth_timing_report_max : Reports timing for max case
	+Folder timingReports: contains all reports layout design stages: Hold and Setup 
-Folder Scripts contains all TCL scripts, SDC files, and I/O assignment used for the design:
	+XFAB_fast.tcl : TCL file with technology libraries for fast case 
	+XFAB_typ.tcl  : TCL file with technology libraries for typical case
	+XFAB_slow.tcl : : TCL file with technology libraries for slow case
	+integrator_syn_max.tcl : TCL file for synthesis flow for max case
	+integrator_syn_typ.tcl : TCL file for synthesis flow for typical case
	+integrator_syn_min.tcl : TCL file for synthesis flow for min case
	+MMMC.tcl : MMMC file consists information about library cells in different conditions
	+integrator_PaR.tcl : Layout generation script
	+integrator.sdc : Synosys Design Constraint
	+Pinmap:   IO Assignment file
- Folder Source contains all source files:
	+integrator.v : Source of integrator block
	+integrator_tb.v: Testbench
	+data.txt: Input for testbench
Process:
Synthesis
	RTL_Compiler ../Scripts/integrator_syn_typ.tcl
	RTL_Compiler ../Scripts/integrator_syn_min.tcl
	RTL_Compiler ../Scripts/integrator_syn_max.tcl
Design layout
	Encounter ../Scripts/integrator_PaR.tcl