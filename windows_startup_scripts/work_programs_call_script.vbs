Set WshShell = CreateObject("WScript.Shell")
WshShell.Run chr(34) & "C:\windows_startup_scripts\work_programs.bat" & Chr(34), 0
Set WshShell = Nothing