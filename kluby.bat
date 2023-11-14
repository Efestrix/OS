@echo off
chcp 1250
cls
if "%1"=="" goto napoveda
if "%2"=="" goto soupiska
goto pridej

:napoveda
echo zadej klub, zadej hráèe
echo vzor: kluby.bat názevKlubu jménoHráèe
echo.
echo.
cmd
goto konec

:pridej
rem pøidávání hráèe na soupisku
echo %2 %date% >> %1.txt

:soupiska
echo Soupiska: %1
echo.
type %1.txt
echo.
echo *******************

:konec
pause

