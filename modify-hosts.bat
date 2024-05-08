@echo off

rem Step 1: Open hosts file in Notepad
start notepad %windir%\System32\drivers\etc\hosts

rem Step 2: Wait for Notepad to close
:waitForNotepad
timeout /t 1 /nobreak >nul
tasklist | find /i "notepad.exe" >nul && goto waitForNotepad

rem Step 3: Flush DNS cache
ipconfig /flushdns

echo Hosts file edited and DNS cache flushed successfully.
pause