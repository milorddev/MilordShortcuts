@echo off
set /p sshDomain=<C:\MilordShortcuts\serverSite.txt
bash -c "ssh root@%sshDomain%"
