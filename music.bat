@echo off
for /f "delims=" %%a in ('call ini.cmd music') do (
    set val=%%a
)
set musicURL=%val%

start chrome %musicURL%