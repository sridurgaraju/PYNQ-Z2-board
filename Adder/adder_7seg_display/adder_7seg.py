#!/usr/bin/env python
# coding: utf-8

# In[1]:


from pynq import Overlay
from pynq.lib import AxiGPIO

# Load the bitstream
adder7seg = Overlay("adder_7seg_design_wrapper.bit")

# Connect to AXI GPIO instances
a_gpio = AxiGPIO(adder7seg.ip_dict['axi_gpio_0']).channel1  # Modify names based on IP dictionary
b_gpio = AxiGPIO(adder7seg.ip_dict['axi_gpio_1']).channel1

def set_inputs(a, b):
    # Write 4-bit values to the input GPIOs
    a_gpio.write(a,0xFFFFFFFF)
    b_gpio.write(b,0xFFFFFFFF)


# In[2]:


# Test with different input values
set_inputs(15, 5)       # Input values

print(f"Value of a: {bin(a_gpio.read())}")
print(f"Value of b: {bin(b_gpio.read())}")


# In[ ]:




