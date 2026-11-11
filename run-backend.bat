@echo off
title Bus Booking Backend (Port 8082)
echo ===================================================
echo Starting Bus Booking System Backend on Port 8082...
echo ===================================================
if defined JAVA_HOME (
    "%JAVA_HOME%\bin\java.exe" -jar "%~dp0target\bus-booking-system-0.0.1-SNAPSHOT.jar"
) else if exist "C:\Program Files\Java\jdk-25\bin\java.exe" (
    "C:\Program Files\Java\jdk-25\bin\java.exe" -jar "%~dp0target\bus-booking-system-0.0.1-SNAPSHOT.jar"
) else (
    java -jar "%~dp0target\bus-booking-system-0.0.1-SNAPSHOT.jar"
)
pause
