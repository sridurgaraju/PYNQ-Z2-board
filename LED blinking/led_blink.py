#!/usr/bin/env python
# coding: utf-8

# In[1]:


from time import sleep
from pynq.overlays.base import BaseOverlay
base = BaseOverlay("base.bit")


# In[2]:


led0 = base.leds[0] #Corresponds to LED LD0
led1 = base.leds[1] #Corresponds to LED LD1
led2 = base.leds[2] #Corresponds to LED LD2
led3 = base.leds[3] #Corresponds to LED LD3


# In[3]:


sw0 = base.switches[0] #Corresponds to SW0
sw1 = base.switches[1] #Corresponds to SW1


# In[4]:


while(True):  # All the code below while(True) runs forever
    if (sw0.read() == True):   # Reads SW0 and check if it toggled
        led0.on()              # IF SW0 is ON --> Turn on LED0
        led1.on()              # IF SW0 is ON --> Turn on LED1
    else:
        led0.off()             # ELSE Turn off LED0
        led1.off()             # ELSE Turn off LED1
    
    if (sw1.read() == True):   # Reads SW1 and check if it toggled
        led2.on()              # IF SW1 is ON --> Turn on LED2
        led3.on()              # IF SW1 is ON --> Turn on LED3
    else:
        led2.off()             # ELSE Turn off LED2
        led3.off()             # ELSE Turn off LED3


# In[ ]:




