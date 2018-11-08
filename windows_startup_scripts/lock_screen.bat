@echo off

waitfor /t 5 SetupReady
rundll32.exe user32.dll,LockWorkStation

start %windir%\explorer.exe C:\windows_startup_scripts