@echo off
chcp 1250
start notepad.exe
echo %username% %date% %time% %computername% >> e:\list.txt