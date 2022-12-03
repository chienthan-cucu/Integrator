### Project name: Integrator
### Author: Phan Van Chien
### Technology: X-FAB 180nm CMOS, XT018 1243
### Library: D_CELLS_5V, 3.3 V
### File description: SDC Constraint 


#***********************************************************************************
# Time Information
#***********************************************************************************
set_units -time 1.0ns;	
set_units -capacitance 1.0pF;	
#***********************************************************************************
# Create Clock
#*********************************************************************************** 		
create_clock -name {clk} -period 50 -waveform { 0 25 } [get_ports {clk}]
#***********************************************************************************
# Set Clock Uncertainty
#***********************************************************************************
set_clock_uncertainty -hold 0.2 [get_ports {clk}]
set_clock_uncertainty -setup 0.2 [get_ports {clk}]  

