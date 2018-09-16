@echo off
set arg1=%1
if [%1]==[] goto defaultAction
if [%1] NEQ [] goto mainAction

:mainAction
REM echo %cd%\%arg1%
git checkout %arg1%
EXIT /B

:defaultAction
REM echo "Default"
git checkout *
EXIT /B
