@echo off
chcp 1250
cls

if "%1"==""(
msg * Nev�m, co po mn� chce�!
cmd
)
if "%1"=="vytvor" md moje\skola tree moje
if "%1"=="smaz" rd moje /s
if "%1"=="zkopiruj" xcopy C:\Windows\debug\*.* >> C:\zaloha /s 

pause 

