:: Elevate as admin
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)

:: Cleanup Shell
echo off
cls
pushd "%~dp0"

:: Launch cleanup PowerShell script
powershell -ep bypass -file reset.ps1

:: Notify of completion
echo Controller cleanup complete
pause