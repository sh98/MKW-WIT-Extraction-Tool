@echo off
:: (c) 2012-01-14, by Wiimm

::-----------------------------------------------------------------------------
:: settings

set SRC_ID=RMCJ01
set SRC_TYPE=JPN

set DEST_ID=RMCJ01
set DEST_NAME=Mario Kart Wii

set IMAGE_TYPE=iso

echo Welcome to my extraction tool. This tool was made by Person and it uses WIT. Credits to Wiimm.
echo This tool requires Wiimm's ISO tools.
echo If you do not have Wiimm's ISO tools, then you can download it at:
echo wit.wiimm.de
echo If you have installed Wiimm's ISO tools, you will need to reboot your computer.
echo Do you have Wiimm's ISO Tools?
echo ----------------- MENU -----------------
echo 1) Yes, I have WIT.
echo 2) No, I don't have WIT.
echo NOTE: Please do not select any value that isn't 1 or 2. Make sure you have an ISO in the folder that this batchfile in!
set /p input=
if %input% == 1 goto true
if %input% == 2 goto false
:false
echo OK, come back when you're ready.
pause
exit
:true
echo Alright, let's get started
echo Now unpacking orginal game...
::-----------------------------------------------------------------------------
:: job

wit extract . --DEST workdir.tmp --psel data --include %SRC_ID% -vv1 -F-.svn/
if errorlevel 1 goto exit
if not exist workdir.tmp\setup.txt goto exit
echo Your PAL game should have been dumped. A file called workdir.tmp was created and it contains all files that
echo this ISO had in it.
pause
exit