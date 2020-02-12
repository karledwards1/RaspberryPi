# File sharing between Raspberry Pi and iPad with Samba

#### Step 1
> Install Samba server with
```
sudo apt install samba samba-common-bin
```
#### Step 2
> Edit ```/etc/samba/smb.conf``` with:
```
[karledwards]
path = /home/karledwards
writable=yes
create mask=0777
directory mask=0777
public=no
```
> This essentially creates a shared folder in home directory> By default, Samba is set up as a standalone server (which is what I want)

#### Step 3
> Create a Samba user. The easiest way is to create the same usename and password, but it may be less secure
```
sudo smbpasswd -a karledwards
```
#### Step 4
> Restart the Samba server
```
sudo systemctl restart smbd
```

> Now the Samba server is set up. To make is accessible via the Files app, do the following:
> > 1.) Open Files and select "...", choose to connect to a server
> > 2.) You will be asked to set the sever, just put in the IP address and select Next
> > 3.) Enter the user name and password and select Next
>
> That's it! The server should now appear under the ***Shared*** heading. When you select the server you will see the files in the /home/karledwards directory in the Pi
