@echo off

rem Batch script to change "Project" mode to PC screen only and then sleep
rem ===== ====== == ====== ========= ==== == == ====== ==== === ==== =====

rem Change Project mode to PC screen only
  echo Changing Project mode to PC screen only & echo.
  %windir%\System32\DisplaySwitch.exe /internal

rem Message to abort sleep
  echo Computer will go to sleep after the cowntdown
  echo Press CTRL+C followed by "Y" OR close the terminal window to abort operation

rem Insert 10s timeout for the display/programs to adjust to the new project mode
  timeout /t 10 /nobreak

rem Sleep computer
  echo Putting the computer to sleep
  %windir%\System32\rundll32.exe powrprof.dll,SetSuspendState 0,1,0
