# This will make the Raspberry Pi an Ethernet Gadget

## Step 1
Add ```dtoverlay=dwc2``` to the ```/boot/config.txt``` file

## Step 2
Add ```modules-load=dwc2``` to the end of the ```/boot/cmdline.txt``` file

## Step 3
Add ```libcomposite``` to ```/etc/modules```

## Step 4
Create ```/root/usb.sh``` (has contents) or move into correct directory

## Step 5
Make ```/root/usb.sh``` executable with ```chmod +x /root/usb.sh```

## Step 6
Add ```/root/usb.sh``` to the ```/etc/rc.local``` file before ```exit 0```

#### At this point the pi is now configured as an ethernet gadget

## Step 7
Install dnsmasq with ```sudo apt-get install dnsmasq```

## Step 8
Create the file ```/etc/dnsmasq.d/usb``` (has contents) or add it to the correct directory

## Step 9
Add ```denyinterfaces usb0``` to ```/etc/dhcpcd.conf```

## Step 10
Create ```/etc/network/interfaces.d/usb0``` (has content) or add it to the correct directory

> The final steps are to restart the Pi, attach it to the iPad Pro, and check to see that it
> working by going to the iPad's settings. A new ***Ethernet*** row should be presented between
> WiFi and Bluetooth indicating that the Pi4 is connected to the iPad Pro through an Ethernet 
> connection.

