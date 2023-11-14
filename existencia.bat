@echo off 
chcp 1250

md c:\prace
if exist c:\prace (
echo soubor existuje
goto a
)ELSE (
echo soubor neexistuje
goto b
) 

:a
echo a = smazat a zkopírovat data z PROGRAMDATA
echo b = zanechat v původním stavu
choice /C ab
if %errorlevel%==1 rd c:\prace xcopy c:\ProgramData c:\prace /s 

if %errorlevel%==2 msg * soubor zachován 


:b
xcopy c:\ProgramData >> c:\prace
goto konec

:konec
pause
