# LED Blinking on PYNQ-Z2  

This project demonstrates two different methods to control LEDs on the **PYNQ-Z2 FPGA board**:  
1. **PS (Processing System) Approach** – Using Python and Jupyter Notebook to control LEDs via the ARM processor.  
2. **PL (Programmable Logic) Approach** – Using Verilog to implement LED control in hardware via FPGA fabric.  

---

## Method 1: **PS Approach (Using Jupyter Notebook & Python)**  

In this approach, we control the LEDs using Python, running on the **ARM processor** inside the PYNQ-Z2 board.  

### ** Setup Instructions**  
1. Connect the **PYNQ-Z2 board** to your computer via USB/Ethernet.  
2. Open **Jupyter Notebook** in your browser.  
3. Upload and run the provided **`ps_led_blink.py`** script.  

### ** Python Code Highlights (ps_led_blink.py)**  
- Uses the **PYNQ library** to interact with the board.  
- Controls GPIO to toggle the LEDs at different intervals.  

---

## Method 2: **PL Approach (Using Verilog & Xilinx Vivado)**  

This approach implements an **FPGA-based LED blinking circuit** in Verilog, using the **Programmable Logic (PL)** fabric of the PYNQ-Z2 board.  

### ** Setup Instructions**  
1. Open **Xilinx Vivado** and create a new project.  
2. Add the provided **Verilog file (`pl_led_blink.v`)** to the project.  
3. Synthesize, implement, and generate the **bitstream (`.bit` file)**.  
4. Program the FPGA with the generated bitstream to see the LEDs blink.  

### ** Verilog Code Highlights (pl_led_blink.v)**  
- Implements a **counter-based LED blinking logic**.  
- Uses an **FPGA clock divider** to generate a visible LED toggle rate.  

---

## **New to PYNQ-Z2? Start with the Adder Project!**  

If this is your **first time using the PYNQ-Z2 board**, check out the **[Adder Project](../Adder/README.md)**.  
- It includes a **step-by-step tutorial** on setting up the board, working with **PS and PL**, and testing a simple **4-bit adder**.  
- You can find the tutorial document **[here](../Adder/adder_tutorial.pdf)**.
  
---

## Future Enhancements   
✔ Implement **PS-PL communication** to toggle LEDs from Python while running custom FPGA logic.  

---

### Contact  
Email: sridurgaraju07@gmail.com
LinkedIn: https://www.linkedin.com/in/sri-durga-raju/

---

Happy Coding!  
