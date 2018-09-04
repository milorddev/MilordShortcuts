@echo off
set /p sshDomain=<C:\MilordShortcuts\serverSite.txt

bash -c "ssh -R 52698:localhost:52698 root@%sshDomain%"
