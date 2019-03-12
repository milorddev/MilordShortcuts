@echo off
for /f "delims=" %%a in ('call ini.cmd ssh') do (
    set val=%%a
)
set sshpath=%val%
bash -c "ssh -R 52698:localhost:52698 root@%sshpath%"
