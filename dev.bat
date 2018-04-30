@echo off
set arg1=%1
if [%1]==[] goto regdev

IF NOT EXIST D:\Projects\%arg1% goto failpath
cd /d D:\Projects\%arg1%
git pull
subl src
ionic serve

:failpath
echo "Folder doesnt exist. going to devroot"
cd /d D:\Projects

:regdev
cd /d D:\Projects