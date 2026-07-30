@echo off
echo Your PC will log out in 1 hour...
timeout /t 3600 /nobreak >nul
shutdown -l
