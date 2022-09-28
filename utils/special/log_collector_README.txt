10ZiG NOS64-V Log Collection Script
Author(s): Ean Newton
Edit date: July 7 2021

Instructions
============

1) Place the "run.bat" file onto a USB drive.

2) Plug the USB into the NOS device and launch a VDI session. From the VDI session navigate to the thumb drive and launch run.bat

3) Leaving the drive plugged in, disconnect from the VDI session and navigate to the 10ZiG Control Panel on the device > System Information > Advanced > Console...

4) Enter the following commands into the Console then disconnect the USB when prompted to do so:

	cd /media/sda1
	sh run.bat

If you receive a file / directory not found error when entering the above, first try it again but changing "cd /media/sda1" to "cd /media/sdb1".

If that also fails, enter the command: dmesg
Near the end of the output will be a line that reads something along the lines of "sda: sda1 sda2". These are the mounted USB devices, try each of them.

5) From your connection server please copy any and all files located in "C:\ProgramData\VMware\VDM\logs" into the Connection_Server folder.
