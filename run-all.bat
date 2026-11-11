@echo off
title Bus Booking System Launcher
echo ========================================================
echo Starting Bus Booking System (Backend + Frontend)...
echo ========================================================
start "Bus Booking Backend (Port 8082)" "%~dp0run-backend.bat"
start "Bus Booking Frontend (Port 3000)" "%~dp0run-frontend.bat"
echo.
echo Both servers have been launched in separate windows!
echo Backend:  http://localhost:8082
echo Frontend: http://localhost:3000
echo.

