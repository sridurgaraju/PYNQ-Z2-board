## ➕ FPGA-Based Adder Implementations on PYNQ-Z2  

This project showcases two different **adder implementations** on the **PYNQ-Z2 FPGA board**:  
1. **Basic 4-bit Adder** – Designed in Verilog, synthesized in **Xilinx Vivado**, and tested using **Python in Jupyter Notebook**.  
2. **Adder with 7-Segment Display** – Extends the basic adder by displaying the sum on **two 7-segment displays** connected to the PYNQ-Z2 board.  

A **detailed tutorial** explaining the implementation steps is included in this folder.  

---

## 🔹 **1️⃣ Basic 4-Bit Adder (PS-PL Interaction)**  

This implementation consists of:  
✔ A **4-bit Verilog adder** synthesized in **Xilinx Vivado**  
✔ A **Python script** in Jupyter Notebook to provide inputs via **AXI GPIO** and read the sum  

### **🛠 Setup & Running the Basic Adder**
1. Open **Vivado** and create a new project.  
2. Add `adder.v` to the project and generate the **bitstream (`.bit` file)**.  
3. Export the bitstream and place it in **Jupyter Notebook's workspace**.  
4. Run `adder.py` in Jupyter Notebook to verify the results.  

---

## 🔹 **2️⃣ Adder with 7-Segment Display**  

This version extends the basic adder by:  
✔ Converting the sum to **Binary-Coded Decimal (BCD)**  
✔ Displaying the sum on **two 7-segment displays** via **PMOD connectors**  

### **🛠 Setup & Running the 7-Segment Adder**  
1. Open **Vivado**, create a new project, and add the following files:  
   - `adder_7seg.v` (Adder logic)  
   - `binary_to_bcd.v` (Binary to BCD conversion)  
   - `seven_seg_decoder.v` (7-segment display decoder)  
2. Use `constraints.xdc` to map the **7-segment display** to PMOD pins.  
3. Generate the **bitstream (`.bit` file)** and export it to Jupyter Notebook.  
4. Run `adder_7seg.py` in Jupyter Notebook to test it.  

---

## 📘 **Step-by-Step Guide**  
For a **detailed tutorial** on implementing both versions, refer to:  
📄 **[adder_tutorial.pdf](./adder_tutorial.pdf)**  

---

## 📌 Future Enhancements  
✔ Implement **larger bit-width adders** (e.g., 8-bit, 16-bit)  
✔ Integrate with **PYNQ overlays for efficient hardware acceleration**  

---

## 📬 Contact  
📧 Email: sridurgaraju07@gmail.com
🔗 LinkedIn: https://www.linkedin.com/in/sri-durga-raju/

Happy FPGA Programming! 🚀✨  
