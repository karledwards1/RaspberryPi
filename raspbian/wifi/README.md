# Setup Wifi & ssh on a headless Raspberry Pi

Create a file called wpa_supplicant.conf with your wifi name and password
from this example. When booted, the Pi will move the file into ```/etc/```.
If you do this more than once the newest wpa_supplicant.conf file will
re-write an existing one- AKA you'll lose those wifi credentials.

</br>

To enable ssh, create a file called ```ssh``` in the boot partition
*BEFORE* first boot. If you do this after the first boot the file will
not enable ssh. The file can be empty or have contents, it doesn't
matter- raspian simply looks for the file's existence on first boot.

</br>

*Now you can boot the Pi.*


</br>

Give a couple of minutes for the Pi to boot/connect to your network, &
then you can ssh into it with ```ssh pi@raspberrypi.local```; the default
password is ```raspberry```.
Note- you shouldn't need it's IP address, but if raspberrypi.local doesn't
look like a valid path to host you can easily find its IP-addr with a
tool for your host OS (arp, nmap, etc).
