# written for flow package Vivado 
set sdc_version 1.7 

create_clock -name clk -period 10.0 -waveform { 0.0 5.0 } [get_ports {clk}]
set_clock_uncertainty 0.0 [get_clocks {clk}]

create_clock -name virtual_io_clk -period 10.0
## IO TIMING CONSTRAINTS
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {rst}]
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {data_in[*]}]
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {valid_in}]
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {coeffs_0[*]}]
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {coeffs_1[*]}]
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {coeffs_2[*]}]
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {coeffs_3[*]}]
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {coeffs_4[*]}]
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {coeffs_5[*]}]
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {coeffs_6[*]}]
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {coeffs_7[*]}]
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {coeffs_8[*]}]
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {coeffs_9[*]}]
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {coeffs_10[*]}]
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {coeffs_11[*]}]
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {coeffs_12[*]}]
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {coeffs_13[*]}]
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {coeffs_14[*]}]
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {coeffs_15[*]}]
set_output_delay -clock [get_clocks {clk}] 0.0 [get_ports {data_out[*]}]
set_output_delay -clock [get_clocks {clk}] 0.0 [get_ports {valid_out}]

