## PYNQ-Z2 Clock
set_property -dict { PACKAGE_PIN H16  IOSTANDARD LVCMOS33 } [get_ports clk]
create_clock -period 8.0 -name clk [get_ports clk] 

## PYNQ-Z2 Reset Button (Adjust pin if needed)
set_property -dict { PACKAGE_PIN D19 IOSTANDARD LVCMOS33 } [get_ports rst]

## PYNQ-Z2 LED (Adjust LED pin accordingly)
set_property -dict { PACKAGE_PIN R14 IOSTANDARD LVCMOS33 } [get_ports led]

