## Clock signal set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } 
[get_ports {clk }];  
 
#IO_L12P_T1_MRCC_35 Sch=clk100mhz  
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk }];  
##Switches set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { T}]; #IO_L24N_T3_RS0_15 Sch=sw[0]  
 
## LEDs                                                                                                                
 set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { Y[0] }]; #IO_L24P_T3_RS1_15 Sch=led[1] 
 
set_property -dict { PACKAGE_PIN J13   IOSTANDARD LVCMOS33 } [get_ports { Y[1] }];  
 
#IO_L17N_T2_A25_15 Sch=led[2] set_property -dict { PACKAGE_PIN N14   
IOSTANDARD LVCMOS33 } [get_ports { Y[2] }]; #IO_L8P_T1_D11_14 Sch=led[3]  