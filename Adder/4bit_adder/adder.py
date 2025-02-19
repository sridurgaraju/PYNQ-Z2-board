#!/usr/bin/env python
# coding: utf-8

# In[1]:


from pynq import Overlay
adder = Overlay("adder_design_wrapper.bit")


# In[2]:


from pynq.lib import AxiGPIO

# Connect to AXI GPIO instances
a_gpio = AxiGPIO(adder.ip_dict['axi_gpio_0']).channel1  # Modify names based on IP dictionary
b_gpio = AxiGPIO(adder.ip_dict['axi_gpio_1']).channel1
sum_gpio = AxiGPIO(adder.ip_dict['axi_gpio_2']).channel1

def set_inputs(a, b):
    # Write 4-bit values to the input GPIOs
    a_gpio.write(a,0xFFFFFFFF)
    b_gpio.write(b,0xFFFFFFFF)

def read_sum():
    # Read the 5-bit sum output
    return sum_gpio.read()



# In[3]:


# Test with different input values
set_inputs(7, 5)       # Input values
print("Sum:", read_sum())  # Expected output: 8

set_inputs(15, 15)      # Input values
print("Sum:", read_sum())  # Expected output: 16


# In[ ]:




