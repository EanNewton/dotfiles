: # ------------------------------------------------------------------------------
: #  Copyright © Ean Newton - All Rights Reserved
: #  Unauthorized copying of this file, via any medium, is strictly prohibited.
: #  Proprietary and confidential.
: #  Written by Ean Newton <Ean.Newton5@gmail.com>, July 2021
: # ------------------------------------------------------------------------------
: # ########################################### #
: # 10ZiG NOS64-V Log Collection Script
: # Author(s): Ean Newton
: # Edit date: July 7 2021
: #
: # ------------------------------------------------------------------------------
: # NOTES:
: # This is a special script which intermixes both sh
: # and cmd code. It is written this way because it is
: # used in system() shell-outs directly in otherwise
: # portable code. It does not support a shebang for nix.
: #
: # ------------------------------------------------------------------------------
: # INSTRUCTIONS:
: # 1) Load this script onto a USB drive.
: # 2) Launch the script from the USB drive while
: #		within a VDI Windows session.
: #		Do NOT eject / unplug the USB when done.
: # 3) Exit VDI and launch a console in NOS.
: # 4) cd /media/sda1 (or sda2 depending on mount point)
: #		sh ./run.bat
: #
: # ------------------------------------------------------------------------------
: # CMD CODE:
: # 	is wrapped in a nix heredoc.
: # SH CODE:
: # 	is preceeded by :; colon is interpretred
: # 	as TRUE by most posix-ish systems while being
: # 	an invalid GOTO label in cmd aka a comment.
: # COMMENTS:
: # 	are preceeded by : # because sh
: # 	considers # to be part of a command name if it is
: # 	the first character of an identifier.
: # ALL SH CODE:
: # 	includes a # for dos vs nix EOL
: # ########################################### #
: #
: # Copy log files from the Windows VDI session
: #
: # ------------------------------------------------------------------------------
:<<"::CMD_DELIM"
@ECHO OFF
ECHO 10ZiG NOS64-V Log Collection Script
IF EXIST .\Agent (echo Loading...) ELSE (mkdir Agent\)
ECHO Copying files... Please be patient.
COPY /-Y C:\ProgramData\VMware\logs Agent\
COPY /-Y "C:\ProgramData\VMware\VMware Blast" Agent\
ECHO -========-
ECHO Please do NOT disconnect the USB drive.
ECHO Disconnect from the VDI sesssion and navigate to
ECHO the 10ZiG Control Panel on the device > System Information >
ECHO Advanced > Console...
ECHO Enter the following commands into the Console:
ECHO cd /media/sda1
ECHO sh run.bat
ECHO
ECHO Note: If you receive a file / directory not found error
ECHO try changing /media/sda1 to /media/sdb1 or /media/sdc1 etc.
ECHO
PAUSE
::CMD_DELIM
: # ------------------------------------------------------------------------------
: # Ensure local directory structure on the USB
: # ------------------------------------------------------------------------------
:; echo "10ZiG NOS64-V Log Collection Script" #
:; echo "[1/9] Creating local directory structure..." #
:; [ ! -d ./Agent ] && mkdir ./Agent #
:; [ ! -d ./Client/zoom ] && mkdir -p ./Client/zoom #
:; [ ! -d ./Client/vmware-root ] && mkdir -p ./Client/vmware-root #
:; [ ! -d ./Connection_Server ] && mkdir ./Connection_Server #
: # ------------------------------------------------------------------------------
: # Copy log files to USB from NOS
: # ------------------------------------------------------------------------------
:; echo "[2/9] Copying /var/log..." #
:; cp -r /var/log ./Client #
:; echo "[3/9] Writing df..." #
:; echo "# df" > ./Client/client.log #
:; df >> ./Client/client.log #
:; echo "[4/9] Writing free..." #
:; echo "# free" >> ./Client/client.log #
:; free >> ./Client/client.log #
:; echo "[5/9] Writing uptime..." #
:; echo "# uptime" >> ./Client/client.log #
:; uptime >> ./Client/client.log #
:; echo "[6/9] Writing top -b -n 1..." #
:; echo "# top -b -n 1" >> ./Client/client.log #
:; top -b -n 1 >> ./Client/client.log #
:; echo "[7/9] Writing ps aux..." #
:; ps aux >> /tmp/psaux.log #
:; cp /tmp/*.log ./Client #
: # ------------------------------------------------------------------------------
: # Special logs that may or may not exist for some users.
: # /tmp/vmware-root can contain named pipe files and
: # therefore requires using find to limit cp to regular files.
: # ------------------------------------------------------------------------------
:; echo "[8/9] Copying special directories" #
:; [ -d /tmp/vmware-root ] && find /tmp/vmware-root -maxdepth 4 -type f -exec cp -t ./Client/vmware-root {} + #
:; [ -d /tmp/teradici-root ] && cp -r /tmp/teradici-root ./Client #
:; [ -d /tmp/.zoom/logs ] && cp -r /tmp/.zoom/logs/* ./Client/zoom #
: # ------------------------------------------------------------------------------
: # Unmount the USB
: # ------------------------------------------------------------------------------
:; echo "[9/9] Unmounting" #
:; cd / #
:; [ -d /media/sda1/Agent ] && { xterm -e kill $PPID && xterm -e umount -l /media/sda1 && xterm -e umount -l /dev/sda1 && xterm -hold -e echo 'Please disconnect the USB drive and copy all files located in C:\ProgramData\VMware\VDM\logs on your connection server into the Connection_Server folder.' & disown; } #
:; [ -d /media/sdb1/Agent ] && { xterm -e kill $PPID && xterm -e umount -l /media/sdb1 && xterm -e umount -l /dev/sdb1 && xterm -hold -e echo 'Please disconnect the USB drive and copy all files located in C:\ProgramData\VMware\VDM\logs on your connection server into the Connection_Server folder.' & disown; } #
:; [ -d /media/sdc1/Agent ] && { xterm -e kill $PPID && xterm -e umount -l /media/sdc1 && xterm -e umount -l /dev/sdc1 && xterm -hold -e echo 'Please disconnect the USB drive and copy all files located in C:\ProgramData\VMware\VDM\logs on your connection server into the Connection_Server folder.' & disown; } #
:; [ -d /media/sdd1/Agent ] && { xterm -e kill $PPID && xterm -e umount -l /media/sdd1 && xterm -e umount -l /dev/sdd1 && xterm -hold -e echo 'Please disconnect the USB drive and copy all files located in C:\ProgramData\VMware\VDM\logs on your connection server into the Connection_Server folder.' & disown; } #
