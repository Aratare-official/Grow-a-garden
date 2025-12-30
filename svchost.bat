@echo off
title Popup Message
color 0A

echo Creating popup message...

:: Create VBS script to show popup
echo Set objShell = CreateObject("WScript.Shell") > "%TEMP%\popup.vbs"
echo objShell.Popup "Hello! This is a popup message.", 5, "System Message", 64 >> "%TEMP%\popup.vbs"

:: Run the popup
cscript //nologo "%TEMP%\popup.vbs"

:: Cleanup
del "%TEMP%\popup.vbs" 2>nul

echo Popup displayed!
echo.
echo Press any key to exit...
pause >nul
exit
