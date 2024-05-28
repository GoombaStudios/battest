@echo off
color 03
title GamePatcher V2

:home

cls
echo.
echo  Welcome to Game Patcher!
echo.
echo  1 - GTA V
echo.
set /p game=

if %game%==1 goto gtav

goto home

:done
cls
echo.
echo  SUCCESS!
echo.
pause
goto home

:gtav
color 02
title GTA V
cls
echo.
echo  GTA V Tweaks:
echo.
echo  1 - Set GTA V to (american) english
echo.

set /p tweak=

if %tweak%==1 goto gtav1

:gtav1
cd "C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V"
echo -ignoreDifferentVideoCard >commandline.txt
echo -uilanguage american >>commandline.txt
goto done