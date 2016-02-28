# WindowsTools
Author: Marvin Baral (marvinbaral1997@gmail.com)

Two AutoIt Scripts which are very usefull for windows-systems, especially win8 and win 8.1: 
one to kill the process which annoys you to get Windows10, which shall be linked to your Startup-Folder; Another one to kill the PDF-"Reader"-App in win8 + 8.1, which is necessary when removing your USB-Stick safely after you opened a pdf-file on the Stick with the Reader

For the Windows-killer tool, there are two versions:
one which only checks the first 11 minutes after Startup 
and another, which runs whenever your PC is on and checks or kills each 10 seconds the processes GWX.exe and GWXUX.exe

If the compiled files don't work, mostly your Antivirus is blocking them.
If you download AutoIt you can execute the uncompiled scripts and modify them.

This program isn't the perfect solution to the annoying Win10-App. The proper and clean solution would be to uninstall thw Windows Update KB3035583 (!!! there are two releases of this Update !!!). After I uninstalled this Update, my script had nothing to do. The hover-text always showed "... killed GWX.exe 0 times".
GWX = Get Windows 10