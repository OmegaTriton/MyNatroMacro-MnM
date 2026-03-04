@echo off

if exist "ForceUpdate.ahk" (
	if exist "AutoHotkey32.exe" (
		if not [%~3]==[] (
			set /a "delay=%~3" 2>nul
			echo Starting Natro Macro in !delay! seconds.
			<nul set /p =Press any key to skip . . . 
			timeout /t !delay! >nul
		)
		start "" "%~dp0AutoHotkey32.exe" "%~dp0ForceUpdate.ahk"
		exit
	) else (set "exe_missing=1")
)