### Project name: Integrator
### Author: Phan Van Chien
### Technology: X-FAB 180nm CMOS, XT018 1243
### Library: D_CELLS_5V, 3.3 V
### Tools:   RTL_Compiler 14.2
###
### Stage: RTL Synthesis
### File description: RTL Synthesis for type case
###
### Work Directory: ../RTL_Compiler
### Run command: RTL_Compiler ../Scripts/integrator_syn_type.tcl

## Setup technology files
include ../Scripts/XFAB_typ.tcl

# Setup variables
set DESIGN Integrator
set PARAMS {}

# Read in Verilog HDL files
read_hdl -v2001 ../Source/integrator.v


# Compile our code
elaborate -parameters $PARAMS $DESIGN

# Setup design constraints
read_sdc ../Scripts/integrator.sdc

## Synthesize our schematic
synthesize -to_mapped
synthesize -incremental

# Write out area and timing reports
report timing > ../Reports/Synth_timing_report
report area > ../Reports/Synth_area_report

# Write out netlist
write_hdl -mapped > ../Outputs/Synthesis/Synth.v

# Write out SDC file
write_sdc > ../Outputs/Synthesis/Synth_out.sdc

gui_show

