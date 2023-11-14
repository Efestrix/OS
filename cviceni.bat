@echo off
chcp 65001
md \skola
md \skola\prg
md \skola\pvy

tree \skola /f
echo ahoj > \skola\prg\a.txt
echo ahoj > \skola\pvy\a.txt
pause
