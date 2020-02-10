#!/bin/bash

# Create a directory to represent the gadget
cd /sys/kernel/config/usb_gadget/ # MUST be in this directory
mkdir -p pi4
cd pi4

# The USB vendor and product IDs are issued by the USB-IF.
# Each USB gadget must be identified by a vendor and product ID
echo 0x1d6b > idVendor # Linux Foundation
echo 0x0104 > idProduct # Multifunction Composite Gadget

mkdir -p strings/0x409 # Set it up as English

# The configuration below is arbitrary
echo "1234567890abcdef" > strings/0x409/serialnumber
echo "Chang Sau Sheong" > strings/0x409/manufacturer
echo "Pi4 USB Desktop" > strings/0x409/product

# Create a configuration
mkdir -p configs/c.1

# Create a function
# ECM is the function name, and usb0 is an arbitrary string
# that represents the instance name
mkdir -p functions/ecm.usb0

# Associate function to configuration
ln -s functions/ecm.usb0 configs/c.1/

# Bind the gadget to UDC
ls /sys/class/udc > UDC

# Start up usb0
ifup usb0

# Start dnsmasq
service dnsmasq restart
