@echo off
chcp 1250

set /p cislo="Zadej poèet možností: "

echo %random%
set a=%random%
set /a b=%a% %% %cislo%
if %b% EQU 1 (
        echo Výhra %b%
        ) else (
        echo Prohra %b%
        )
echo Výsledek je: %b%
pause