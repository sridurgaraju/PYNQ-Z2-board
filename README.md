## 🚀 PYNQ-Z2 FPGA Projects  

This repository contains FPGA-based projects implemented on the **PYNQ-Z2 board**. These projects demonstrate various **digital design and embedded system concepts**, ranging from simple LED blinking to more complex processing tasks.  
## 🔍 Projects Overview  

- **LED Blinking:** A basic project that toggles LEDs at different rates using hardware description languages (HDL) and Python.  
- **Adder:** Implements a **4-bit binary adder** on the PYNQ-Z2 board using Verilog/SystemVerilog.  

## 🛠 Tools & Technologies  

- **Hardware:** PYNQ-Z2 FPGA Board  
- **Languages:** Verilog, SystemVerilog, Python  
- **Development Tools:** Xilinx Vivado, PYNQ Framework (Jupyter Notebook)  

## 🔧 Setup & Running the Projects  

1. **Clone the repository** or download the required project files:  
   ```bash
   git clone https://github.com/sridurgaraju/PYNQ-Z2.git
   cd PYNQ-Z2/<project-folder>
Alternatively, you can manually download the design files from the respective project folder.

2. For HDL-based projects (Vivado Flow):
- Open Xilinx Vivado
- Create a new project and import the provided Verilog/SystemVerilog files
- Synthesize, implement, and generate the bitstream
- Load the bitstream onto the PYNQ-Z2 board
- For PYNQ-based projects (Python & Jupyter):

3. For PYNQ-based projects (Python & Jupyter):
- Set up the PYNQ-Z2 board and connect via Jupyter Notebook
- Navigate to the respective project directory
- Run the provided Python scripts in Jupyter Notebook

##📌 Future Additions
- Memory-mapped I/O projects
- Communication protocols (I2C, SPI, UART)
