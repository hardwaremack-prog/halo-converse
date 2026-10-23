@echo off
cd /d "%~dp0"
title Halo Converse (close this window to quit)
set PYTHONIOENCODING=utf-8
if not exist ".venv\Scripts\python.exe" (
  echo Please run "Install Halo Converse.bat" first.
  pause
  exit /b 1
)
rem Network sharing needs this (added in an update)
".venv\Scripts\python.exe" -c "import cryptography" >nul 2>nul || ".venv\Scripts\python.exe" -m pip install cryptography --quiet
rem Make sure Ollama is running
tasklist /fi "imagename eq ollama.exe" | find /i "ollama.exe" >nul || (
  if exist "%LOCALAPPDATA%\Programs\Ollama\ollama app.exe" (
    start "" "%LOCALAPPDATA%\Programs\Ollama\ollama app.exe"
  ) else (
    start "" /min ollama serve
  )
)
".venv\Scripts\python.exe" server.py
if errorlevel 1 pause
