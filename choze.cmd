@echo off
choice /C abck /T 10 /D k
rem errorlevel je systémová proměnná, nabývá různých hodnot
echo %errorlevel% 
if %errorlevel%==1 echo Stisknul si Acko.
if %errorlevel%==2 echo Stisknul si Becko.
if %errorlevel%==3 echo Stisknul si Cecko.
if %errorlevel%==abcdefghijklmnopqrstuvwxyz pause
goto konec

if errorlevel 3 goto a
if errorlevel 2 goto becko.
if errorlevel 1 echo Stisknul si Acko.

:a
echo Stisknul si Cecko.
goto konec

:becko
echo Stisknul si Becko.
echo.
pause
goto konec

:konec
pause
