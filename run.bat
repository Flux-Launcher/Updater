@echo off
title Flux Updater (Dev Mode)
echo ========================================
echo   Uruchamianie Flux Updater w trybie DEV
echo ========================================
where cargo >nul 2>nul
if %ERRORLEVEL% neq 0 (
    set "PATH=%USERPROFILE%\.cargo\bin;%PATH%"
)
cd /d "%~dp0"
cargo run
if %ERRORLEVEL% neq 0 (
    echo.
    echo Flux Updater zakonczyl dzialanie z kodem bledu %ERRORLEVEL%.
    pause
)
