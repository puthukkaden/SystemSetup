Set WshShell = CreateObject("WScript.Shell")
WshShell.Run chr(34) & "C:\windows_startup_scripts\lock_screen.bat" & Chr(34), 0
Set WshShell = Nothing
