@echo off
title Pembuat Shortcut Desktop - Astra IELTS Pro
set "APP_DIR=%~dp0"
set "HTML_FILE=%APP_DIR%Astra_IELTS_Pro.html"
if not exist "%HTML_FILE%" set "HTML_FILE=%APP_DIR%index.html"

echo ========================================================
echo   ASTRA IELTS PRO - PEMBUAT SHORTCUT DESKTOP OTOMATIS
echo ========================================================
echo.
echo Sedang membuat shortcut "Astra IELTS Pro" di layar Desktop Anda...

powershell -NoProfile -ExecutionPolicy Bypass -Command "$ws = New-Object -ComObject WScript.Shell; $desk = [Environment]::GetFolderPath('Desktop'); $s = $ws.CreateShortcut($desk + '\Astra IELTS Pro.lnk'); $edge = 'C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe'; if (!(Test-Path $edge)) { $edge = 'C:\Program Files\Microsoft\Edge\Application\msedge.exe' }; if (Test-Path $edge) { $s.TargetPath = $edge; $uri = ([System.Uri]$env:HTML_FILE).AbsoluteUri; $s.Arguments = '--app=' + $uri + ' --start-maximized'; $s.IconLocation = $edge + ',0' } else { $s.TargetPath = $env:HTML_FILE }; $s.WorkingDirectory = $env:APP_DIR; $s.Description = 'Astra IELTS Pro - 80 Paket Latihan Cambridge & 200 Flashcards'; $s.Save()"

echo.
echo [BERHASIL!] Shortcut "Astra IELTS Pro" sudah muncul di layar Desktop Anda.
echo Membuka Astra IELTS Pro dalam Mode Aplikasi Desktop...
start "" msedge --app="file:///%HTML_FILE:\=/%" --start-maximized 2>nul || start "" chrome --app="file:///%HTML_FILE:\=/%" --start-maximized 2>nul || start "" "%HTML_FILE%"
timeout /t 3 >nul
