@echo off

:home

echo LOAING...
md data
cd data
title GappStore

del list.txt
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/GoombaStudios/battest/main/AppList.txt -Outfile list.txt"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/GoombaStudios/battest/lists/linkcode -Outfile links.cmd"
call links.cmd
color 3f
cls
echo.
echo  What do you want to install?
echo.
type list.txt
echo.
set /p dl=

set dllink=0

if %dl%==1 set dllink=%opt1%
if %dl%==1 set dlname=%n1%

if %dllink%==0 exit

if exist %dlname% goto al_inst

cd..

md %dlname%
cd %dlname%

powershell -Command "Invoke-WebRequest %dllink% -Outfile %dlname%.cmd"

goto yes

:al_inst
cls
color 04
echo.
echo  Already installed.
echo.
pause
exit

:yes
cls
color 02
echo.
echo SUCCESS!
echo.
pause
goto home
