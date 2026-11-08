@echo off
title Astra IELTS Pro - Desktop App Launcher
set "HTML_FILE=%~dp0Astra_IELTS_Pro.html"
if not exist "%HTML_FILE%" set "HTML_FILE=%~dp0index.html"
start "" msedge --app="file:///%HTML_FILE:\=/%" --start-maximized 2>nul || start "" chrome --app="file:///%HTML_FILE:\=/%" --start-maximized 2>nul || start "" "%HTML_FILE%"
