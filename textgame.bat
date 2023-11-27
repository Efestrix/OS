@echo off
chcp 1250


:znova
set /P jmeno="Zadej jméno:"
echo %jmeno% %username% %date% %time% >> C:\zaloha\info.txt
echo Vítej v mé hře %jmeno%
echo Cílem této hry je se dostat co nejdál
goto start


:start
echo.
echo Vyber si z jednu cest
echo A. Džungle
echo B. Jeskyně
choice /C ab 
if %errorlevel%==1 (echo vybral sis džungli
goto Džungle)  
if %errorlevel%==2 (echo vybral sis jeskyně
goto Jeskyně)


:Jeskyně
echo.
echo Jdeš jeskyní, což je ta nejtěžší cesta
echo Po několika kilometrech si uslyšel lidské hlasy, narazil si na vesnici
echo teď se random rozhodne jestli půjdeš do vesnice a nebo budeš pokračovat v cestě
timeout /T 10
if %random% LEQ 10000 (echo půjdeš do vesnice
                       goto vesnice
                      ) else (echo pokračuješ v cestě
                      goto cestaJ
                      )
goto konec

:vesnice
echo.
echo jsi ve vesnici
goto konec

:cestaJ
echo.
echo pokračuješ 
goto konec
 

:Džungle
cls
echo.  
echo Šel si malou chvilku džunglí a náhle ses ztratil 
echo Po chvilce si potkal skupinku 2 poutníků
echo Co uděláš?
echo A. Půjdeš se zeptat na cestu
echo B. Přepadneš je a okradneš
echo ***************************************************
choice /C ab
if %errorlevel%==1 (echo Půjdeš se jich zeptat na cestu
goto Cesta)
if %errorlevel%==2 (echo Přepadneš je a okradneš
goto Přepadení)


:Přepadení
echo. 
echo Kámo, však jsou dva
echo no nic, zkus to příště
goto konec


:Cesta
cls
echo.
echo Poradili ti, že máš jít po cestě směrem na sever
echo šel si několik hodin a narazil si na černého rytíře
echo chce s tebou bojovat 
goto souboj


:souboj
echo.
echo A.útok
echo B.obrana
choice /C abc /T 10 /D c
if %errorlevel%==1 goto utok
if %errorlevel%==2 goto obrana
if %errorlevel%==3 (echo Zabil tě
                    goto konec)
 
                   
:obrana
echo.
echo teďka zadej číslo větší než nebo rovno random
set /P a="Zadej číslo:"
if %a% GEQ %random% (
                echo Ubránil si to 
                goto souboj
                ) else (
                echo Zabil tě :(
                goto konec
                )


:utok
echo.
echo teďka zadej číslo větší než nebo rovno random
set /P a="Zadej číslo:"
if %a% GEQ %random% (
             echo Porazil si ho
             goto vyhra
             ) else (
             echo Zabil tě :(
             goto konec
             )
   
           
:vyhra
echo.
echo gratuluji, nyní si dokončil moji textovou hru :)
goto konec


:konec
echo.
echo chceš to zkusit znova?
echo A.ano
echo B.ne
choice /C ab /T 10 /D b
if %errorlevel%==1 goto znova
if %errorlevel%==2 pause
