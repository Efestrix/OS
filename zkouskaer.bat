@echo off
chcp 1250

set /p cislo="Zadej po�et mo�nost�: "

echo %random%
set a=%random%
set /a b=%a% %% %cislo%
if %b% EQU 1 (
        echo V�hra %b%
        ) else (
        echo Prohra %b%
        )
echo V�sledek je: %b%
pause