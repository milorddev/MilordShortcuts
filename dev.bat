@echo off
set arg1=%1
if [%1]==[] goto regdev

IF NOT EXIST D:\Projects\%arg1% goto failpath
cd /d C:\Projects\%arg1%

:failpath
echo "Folder doesnt exist. going to devroot"
cd /d C:\Projects

:regdev
cd /d C:\Projects
