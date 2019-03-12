@echo off
for /f "delims=" %%a in ('call ini.cmd ssh') do (
    set val=%%a
)
set sshpath=%val%

bash -c "ssh root@%sshpath%"
