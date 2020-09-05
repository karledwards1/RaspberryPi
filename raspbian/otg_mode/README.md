# This will make the Raspberry Pi an Ethernet Gadget

> I've only created this guide for personal use with an iPad Pro.
> This should hypothetically work with other hosts systems as well,
> but I have not tested any personally. 

</br>

*Modify these files in the boot partition from a fresh install BEFORE first boot!*

</br>

### Step 1

Add ```dtoverlay=dwc2``` to the ```/boot/config.txt``` file

### Step 2

Append ```modules-load=dwc2``` to the very end of the ```/boot/cmdline.txt``` file

</br>
 
*Now boot the pi. If you are doing this completely headless, make sure to setup your pi
to use wifi and allow ssh before booting*

</br>

### Step 3

Add ```libcomposite``` to ```/etc/modules```

### Step 4

Copy ```usb.sh``` into the ```/root/``` directory

### Step 5

Make ```/root/usb.sh``` executable with ```sudo chmod +x /root/usb.sh```

### Step 6

Append ```/root/usb.sh``` to the ```/etc/rc.local``` file right above the last line that reads ```exit 0```

*At this point the pi is now configured as an ethernet gadget*

### Step 7

Install dnsmasq ```sudo apt-get install dnsmasq```

### Step 8

Copy ```usb``` into the  ```/etc/dnsmasq.d/``` directory

### Step 9

Append ```denyinterfaces usb0``` to ```/etc/dhcpcd.conf```

### Step 10

Copy ```usb0``` into the  ```/etc/network/interfaces.d/``` directory

> The final steps are to restart the Pi, attach it to the iPad Pro, and check to see that it
> working by going to the iPad's settings. A new ***Ethernet*** row should be presented between Wifi
> and Bluetooth indicating that the Pi is connected to the iPad and using its internet connection

