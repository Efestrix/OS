@echo off
chcp 1250


:znova
echo.
cls
set /P jmeno="Zadej jméno:"
echo %jmeno% %username% %date% %time% >> C:\zaloha\info.txt
echo Vítej v mé hře %jmeno%
echo Cílem této hry je se dostat co nejdál
goto start


:start
cls
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
cls
echo.
echo Jdeš jeskyní, což je ta nejtěžší cesta
echo Po několika kilometrech si uslyšel lidské hlasy, narazil si na vesnici
echo teď se random rozhodne jestli půjdeš do vesnice a nebo budeš pokračovat v cestě
set rozhodnuti=%random%
echo %rozhodnuti%
timeout /T 10
if %rozhodnuti% LEQ 20000 (echo půjdeš do vesnice
                       goto vesnice
                      ) else (echo pokračuješ v cestě
                      goto cestaJ
                      )

:vesnice
cls
echo.
echo jsi ve vesnici
echo spontánně si dostal hlad
echo ale aby ses mohl najíst musíš vypočítat tenhle příklad správně
echo.
set /A cislo1=%random%
set /A cislo2=%random%
set /A vysledek=%cislo1% + %cislo2%
echo %cislo1% + %cislo2% = ?
set /P uzivatel="Tvoje odpověď: "
timeout /T 10
if %uzivatel% EQU %vysledek% (     
                    goto vyhra
                     ) else ( 
                     goto konec
                     )

:cestaJ
cls
echo.
echo bohužel špatná cesta
timeout /T 5
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
cls
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
cls
echo.
echo A.útok
echo B.obrana
choice /C abc /T 10 /D c
if %errorlevel%==1 goto utok
if %errorlevel%==2 goto obrana
if %errorlevel%==3 (echo Zabil tě
                    goto konec)
 
                   
:obrana
cls
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
cls
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
cls
echo.
echo gratuluji, nyní si dokončil moji textovou hru :)
goto konec


:konec
cls
echo.
echo chceš to zkusit znova?
echo A.ano
echo B.ne
choice /C ab /T 10 /D b
if %errorlevel%==1 goto znova
if %errorlevel%==2 pause
