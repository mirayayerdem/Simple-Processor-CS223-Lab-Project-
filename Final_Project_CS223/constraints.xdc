set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

# Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

# Switches 
set_property PACKAGE_PIN V17 [get_ports {switch[0]}] 	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports {switch[0]}] 
set_property PACKAGE_PIN V16 [get_ports {switch[1]}] 	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports {switch[1]}] 
set_property PACKAGE_PIN W16 [get_ports {switch[2]}] 	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports {switch[2]}] 
set_property PACKAGE_PIN W17 [get_ports {switch[3]}] 	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports {switch[3]}] 
set_property PACKAGE_PIN W15 [get_ports {switch[4]}] 	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports {switch[4]}] 
set_property PACKAGE_PIN V15 [get_ports {switch[5]}] 	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports {switch[5]}] 
set_property PACKAGE_PIN W14 [get_ports {switch[6]}] 	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports {switch[6]}] 
set_property PACKAGE_PIN W13 [get_ports {switch[7]}] 	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports {switch[7]}] 
set_property PACKAGE_PIN V2 [get_ports {switch[8]}] 	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports {switch[8]}] 
set_property PACKAGE_PIN T3 [get_ports {switch[9]}] 	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports {switch[9]}] 
set_property PACKAGE_PIN T2 [get_ports {switch[10]}] 	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports {switch[10]}] 
set_property PACKAGE_PIN R3 [get_ports {switch[11]}] 	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports {switch[11]}] 
set_property PACKAGE_PIN W2 [get_ports {switchEn}] 	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports {switchEn}] 
set_property PACKAGE_PIN R2 [get_ports {reset}] 	 	 	 	 	 
 	set_property IOSTANDARD LVCMOS33 [get_ports {reset}] 

#Buttons
set_property PACKAGE_PIN W19 [get_ports leftBtn]						
	set_property IOSTANDARD LVCMOS33 [get_ports leftBtn]
set_property PACKAGE_PIN T17 [get_ports rightBtn]						
	set_property IOSTANDARD LVCMOS33 [get_ports rightBtn]

#7 segment display
set_property PACKAGE_PIN W7 [get_ports {seg[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[0]}]
set_property PACKAGE_PIN W6 [get_ports {seg[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[1]}]
set_property PACKAGE_PIN U8 [get_ports {seg[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[2]}]
set_property PACKAGE_PIN V8 [get_ports {seg[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[3]}]
set_property PACKAGE_PIN U5 [get_ports {seg[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[4]}]
set_property PACKAGE_PIN V5 [get_ports {seg[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[5]}]
set_property PACKAGE_PIN U7 [get_ports {seg[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[6]}]

set_property PACKAGE_PIN V7 [get_ports dp]							
	set_property IOSTANDARD LVCMOS33 [get_ports dp]

set_property PACKAGE_PIN U2 [get_ports {an[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}]
set_property PACKAGE_PIN U4 [get_ports {an[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}]
set_property PACKAGE_PIN V4 [get_ports {an[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}]
set_property PACKAGE_PIN W4 [get_ports {an[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]