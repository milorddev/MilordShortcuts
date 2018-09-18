@echo off
cd %cd%
git remote get-url origin > giturlresult.txt
set /p DATA=<giturlresult.txt
start chrome %DATA%
del giturlresult.txt