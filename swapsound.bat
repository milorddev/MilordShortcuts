@echo off
set input=%1
IF %1.==. GOTO noparam


if %input%==1 (
	nircmd setdefaultsounddevice "Speakers" 1
	Exit /b 0
) 

if %input%==2 (
	nircmd setdefaultsounddevice "Headphones" 1
	Exit /b 0
) 
if NOT %input%==1 (
	if NOT %input%==2 (
		goto noparam
))


:noparam
echo Only 1 or 2 can be selected
echo Choose 1 for Speaker
echo Choose 2 for Headphones
pause
Exit /b 0