@echo off
for /f "delims=" %%a in ('call ini.cmd dev') do (
    set val=%%a
)
set devpath=%val%
set arg1=%1

if [%1]==[] goto regdev

IF NOT EXIST %devpath%\%arg1% goto failpath
cd /d %devpath%\%arg1%

:failpath
echo "Folder doesnt exist. going to devroot"
cd /d %devpath%

:regdev
cd /d %devpath%
