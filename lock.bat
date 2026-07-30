@echo off
mode con: cols=40 lines=20
title PC Time Limiter
color 0A

:menu
cls
echo ==============================
echo        PC TIME LIMITER
echo ==============================
echo.
echo Choose how long you want to use your PC:
echo.
echo 1. 30 minutes
echo 2. 1 hour
echo 3. 2 hours
echo 4. 3 hours
echo 5. Custom time
echo.
set /p choice=Enter your choice (1-5): 

if %choice%==1 set time=1800
if %choice%==2 set time=3600
if %choice%==3 set time=7200
if %choice%==4 set time=10800

if %choice%==5 (
    set /p custom=Enter time in minutes: 
    set /a time=%custom%*60
)

if not defined time (
    echo Invalid choice...
    pause
    goto menu
)

cls
echo Timer started...
echo Your PC will lock after %time% seconds.
echo DO NOT CLOSE THIS WINDOW.
echo.
pause

timeout /t %time% /nobreak >nul

echo Time is up! Locking PC...
shutdown -l
