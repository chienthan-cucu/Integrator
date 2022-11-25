### Project name: Integrator
### Author: Phan Van Chien
### Technology: X-FAB 180nm CMOS, XT018 1243
### Library: D_CELLS_5V, 3.3 V
### Tools:   RTL_Compiler 14.2
###
### Stage: Import technical library 
### File description: Library CPF, corner .lib for best case, LEF, capacitors.
###
### Work Directory: ../RTL_Compiler
### Run command: include ../Scripts/XFAB_slow.tcl

# Setup path for liberty CPF directory
set_attribute lib_search_path  /Cadence/Libs/X_FAB/XKIT/xt018/diglibs/D_CELLS_5V/v5_0/liberty_LP5MOS_MOS5/v5_0_0/PVT_3_30V_range

# Setup PVT corner .lib file
set_attribute library {/Cadence/Libs/X_FAB/XKIT/xt018/diglibs/D_CELLS_5V/v5_0/liberty_LP5MOS_MOS5/v5_0_0/PVT_3_30V_range/D_CELLS_5V_LP5MOS_MOS5_slow_3_00V_175C.lib}

# Setup LEF files
set_attribute lef_library { \
/Cadence/Libs/X_FAB/XKIT/xt018/cadence/v5_0/techLEF/v5_0_2/xt018_xx43_MET4_METMID_METTHK.lef \
/Cadence/Libs/X_FAB/XKIT/xt018/diglibs/D_CELLS_5V/v5_0/LEF/v5_0_1/xt018_D_CELLS_5V.lef \
/Cadence/Libs/X_FAB/XKIT/xt018/diglibs/D_CELLS_5V/v5_0/LEF/v5_0_1/xt018_xx43_MET4_METMID_METTHK_D_CELLS_5V_mprobe.lef \
}
# Setup Capacitance Table file
set_attribute cap_table_file /Cadence/Libs/X_FAB/XKIT/xt018/cadence/v5_0/capTbl/v5_0_1_2/xt018_xx43_MET4_METMID_METTHK_typ.capTbl
# Setup error on blackbox
set_attribute hdl_error_on_blackbox true

# Library name = D_CELLS_5V
# Voltage 3.3 V;
# Process XT018 with option 1243
