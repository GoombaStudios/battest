@echo off

set ver=1.0
set titleX=Goomba's Util %ver%  

if exist theme.cmd goto load_theme
set theme=03

:home
title %titleX%[HOME]

cls
color %theme%

echo.
echo  Welcome back to Goomba's Util (ver %ver%), %username%!
echo.
echo.
echo  What do you want to do?
echo.

echo  1 - Download File
echo  2 - Shutdown Options
echo  3 - WiFi Tweaks
echo  4 - APP Downloader
echo  5 - Pack Manager
echo  6 - Disk Tools
echo  7 - Windows Bug Fixer

echo.

echo  C - Credits
echo  U - Updater

echo.

set /p task=

if %task% == 1 goto dload
if %task% == 2 goto power-
if %task% == 3 goto wifi
if %task% == 4 goto appdl
if %task% == 5 goto pack
if %task% == 6 goto soon
if %task% == 6 goto fixer


if %task% == U goto update
if %task% == u goto update
if %task% == C goto cred
if %task% == c goto cred

set error_msg=Incorrect input!
goto error

:load_theme
call theme.cmd
goto home

:error
title %titleX%[ERROR]

md Files
cd Files

echo [%time%] [%date%] %error_msg% >>log.txt

cd..

cls
color 4f
echo :(
echo AN ERROR ACCURED!
echo Check log.txt (/files/log.txt) for more info!
echo.

pause
goto home

:soon
title %titleX%[SOON]

color 04
cls

echo.
echo  [Comming soon]
echo.
echo  The feature you tried to use doesn't exist yet.
echo  It will probably be updated soon.
echo.
echo  Check for updates in the Updater.
echo.
pause

goto home

:cred
title [CREDITS]
cls

echo.

echo  All code written by Goomba. [DISCORD: GoombaKart]
echo.
echo  Some commands I learned about from YouTube.
echo.

echo.

pause >nul
goto home

:devstop
title %titleX% [SUPPORTET]
cls
color 06

echo.
echo  Warning: The FEATURE you are trying to access is a legacy feature.
echo  This means it's still available, for other resons (compatability, old features, etc...)
echo.
echo  Some features might no longer work! 
echo.
echo If you are trying to access the Premade Packs, install "https://pastebin.com/raw/AqvMZvaJ" as LIB! It moved there!
echo.
pause
cls
goto %devstop_goto%

:dload
title %titleX%[DOWNLOAD]

cls
echo.
echo  Welcome to Goomba's downloader!
echo.
echo  Please enter a download link!
echo.
set /p dl_link=
cls

echo  Download From: "%dl_link%"
echo.
echo  What FILE EXTENTION does the File have? (exe, txt, png...)
echo.
set /p dl_ext=
cls

echo  Download From: "%dl_link%"
echo  EXTENTION: %dl_ext%
echo.
echo  Does this look right?
echo.
pause
cls

:download
color 06
echo Starting download...
md Downloads
cd downloads
powershell -Command "Invoke-WebRequest %dl_link% -Outfile download.%dl_ext%"
cd..
cls
color a0
echo.
echo  DOWNLOAD has finished!
echo.
pause
goto home

:power-
cls
title %titleX%[SHUTDOWN]
echo.
echo  What do you want to do?
echo.
echo  1 - Remote Shutdown
echo  2 - Shutdown and go to BIOS
echo.
set /p task=

if %task% == 1 goto power1
if %task% == 2 goto soon

set error_msg=Incorrect input!
goto error

:power1
cls
shutdown -i
goto home

:power2
cls
echo.
::

echo Are you sure you want to shutdown and restart to BIOS? (y/n)
echo.

::set /p yn=
goto power3
::if %yn%==Y goto power3

goto power-

:power3
shutdown /r /fw /f
exit

:wifi
title %titleX%[WIFI]
cls
color 0a
echo.
echo  Welcome to Goomba's Wifi Tweaks!
echo  What do you want to do?
echo.

echo  1 - List of all WiFis you connected to
echo  2 - Password of a WiFi
echo  3 - Find DNS
echo  4 - Find location of short URL [WIN 10+]

echo.
set /p task=

if %task% == 1 goto wifi1
if %task% == 2 goto wifi2
if %task% == 4 goto wifi3
if %task% == 3 goto wifi4

set error_msg=Incorrect input!
goto error

:wifi1
cls
netsh wlan show profile
echo.
echo  This is a list of all WiFis you connected to.
echo.
pause
goto home

:wifi2
cls
echo.
echo  How is the WiFi called?
echo.
set /p wifi=
cls
netsh wlan show profile name= "%wifi%" key=clear
echo.
echo  This is the profile of the WiFI. The Password is located here!
echo  [See Key Conetnt]
echo.
pause
goto home

:wifi3
cls
echo.
echo  What short URL do you want to see the destination of?
echo.
set /p url=
cls
curl --head --location "%url%" | findstr Location
pause
goto home

:wifi4
cls
ipconfig /all | findstr DNS
pause
goto home

:appdl
title %titleX%[EZDownload]
cls
echo.
echo  Welcome to Goomba's EZDownloader
echo  Do you need a list of all downloadable apps? (y/n)
echo.
set /p yn=

if %yn%==y goto appdl_help
if %yn%==Y goto appdl_help

goto appdl2

:appdl_help
cls
color f0
echo.
echo  [BUILT-IN] APPS LIST:
echo.

echo  Mozilla Firefox - "firefox"
echo  7Zip - "7zip"
echo  Steam - "steam"
echo  Notepad++ - "notepad++" "notepad-plus-plus"

echo.
pause

:appdl2
color %theme%
cls
echo.
echo  What Programm would you like to download? [exit to go to home]
echo.
set /p app=

set dl_ext=exe

if %app%==firefox (set dl_link=https://download.mozilla.org/?product=firefox-stub&os=win&lang=de&attribution_code=c291cmNlPXd3dy5nb29nbGUuY29tJm1lZGl1bT1yZWZlcnJhbCZjYW1wYWlnbj0obm90IHNldCkmY29udGVudD0obm90IHNldCkmZXhwZXJpbWVudD0obm90IHNldCkmdmFyaWF0aW9uPShub3Qgc2V0KSZ1YT1jaHJvbWUmY2xpZW50X2lkPShub3Qgc2V0KSZjbGllbnRfaWRfZ2E0PShub3Qgc2V0KSZzZXNzaW9uX2lkPShub3Qgc2V0KSZkbHNvdXJjZT1tb3pvcmc.&attribution_sig=918865f9a81791b929f6eaa912591ee7aca2878673d9273a3763214ccd6f7b8a&_gl=1*1oyjjz4*_ga*MTYwMTQyOTU0Ny4xNzExMjkzMzUx*_ga_MQ7767QQQW*MTcxMTI5MzM1MC4xLjEuMTcxMTI5MzM1Mi4wLjAuMA..)
if %app%==7zip (set dl_link=https://www.7-zip.org/a/7z2403-x64.exe)
if %app%==steam (set dl_link=https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe)
if %app%==notepad++ (set dl_link=https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.6.4/npp.8.6.4.Installer.x64.exe)
if %app%==notepad-plus-plus (set dl_link=https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.6.4/npp.8.6.4.Installer.x64.exe)

if %app%==exit goto home

goto download

:pack
cls
title %titleX%[PACKS]
color 06
echo.
echo  Welcome to Goomba's Pack Manager!
echo  Install custom Packs, and use them!
echo.
echo  1 - Install a custom Pack.
echo  2 - Run a custom pack.
echo  3 - Create a custom Pack.
echo  4 - Install a premade Pack
echo  5 - Pack LIB (LIBARY) Options
echo.
echo  d - delete all packs!
echo  e - Home
echo.
set /p task=

if %task% == e goto home
if %task% == 1 goto pack_dl
if %task% == d goto pack_del
if %task% == 2 goto pack_run
if %task% == 3 goto soon
if %task% == 4 goto gpacks
if %task% == 5 goto pack_lib

goto home

:pack_dl
echo.
echo  Please enter a Pack link!
echo.
set /p dl_link=
cls

echo  Download Pack From: "%dl_link%"
echo.
echo  What do you wanna name the shortcut as?
echo.
set /p dl_ext=
cls

echo  Download From: "%dl_link%"
echo.
echo  Does this look right?
echo.
pause
cls

:inst_pack

color 60
echo Starting download...
md Packs
cd Packs
powershell -Command "Invoke-WebRequest %dl_link% -Outfile %dl_ext%.cmd"
cd..
cls
color a0
echo.
echo DOWNLOAD has finished!
echo.
pause
goto pack

:pack_del
del Packs
goto pack

:pack_run
echo.
echo  What pack do you want to run?
echo.

set /p pack=
cd Packs
start %pack%.cmd
cd..
goto packs

:gpacks
set devstop_goto=gpacks2
goto devstop

:gpacks2
echo.
echo  What Pack do you want to install?
echo.
echo  themer  - Install custom Themes
echo  update - update your client!
echo.
set /p pack=

if %pack%==themer set dl_link=https://pastebin.com/raw/hJLsrzxH
if %pack%==themer set dl_ext=themer
if %pack%==update goto soon
::if %pack%==update

goto inst_pack

:pack_lib
color 0e
cls
echo.
echo  Welcome to LIB options.
echo.
echo  1 - Run the Installed LIB
echo  2 - Install another LIB
echo.
set /P task=

if %task%==1 goto run_lib
if %task%==2 goto inst_lib

goto pack

:inst_lib
cls
echo.
echo  Please enter a link to a LIB.
echo  Goomba's Lib: https://pastebin.com/raw/AqvMZvaJ
echo.

set /p dl_link=

color 60
echo Starting download...
md Files
cd Files
md lib
cd lib
powershell -Command "Invoke-WebRequest %dl_link% -Outfile lib.cmd"
cd..
cd..
cls
color a0
echo.
echo  DOWNLOAD has finished!
echo.
pause
goto pack

:run_lib
cd Files
cd lib
start lib.cmd
exit

:disktool
cls
title %titleX%[DISK]
echo.
echo  Welcome to Goomba's Disk Tool!
echo  What do you want to do?
echo.
echo  1 - Create a fake disk

:update
::goto update2
md Files
cd Files
md Updater
cd Updater

cls

title Goomba's Util [UPDATE]

color 3f

echo.
echo  UPDATER [%ver%]
echo.
pause
echo  Checking for updates...
powershell -Command "Invoke-WebRequest https://pastebin.com/raw/3fXZEBfj -Outfile update_ver.cmd"
call update_ver.cmd

del update_ver.cmd

if not %new_ver%==%ver% goto update1

cls
echo.
echo  [%time%] [%date%] No updates found! Return to homepage!
echo.
pause
cd..
cd..
goto home

:update1

color 3e

cls
echo.
echo  [%time%] [%date%] Update found! Do you want to install it? (y/n)
echo.
set /p yn=

if %yn%==y goto update2
if %yn%==Y goto update2

cd..
cd..
goto home

:update2
cd..
cd..
md Packs
cd Packs

if exist update.cmd goto update3

cd..

set error_msg=Update Channel Missing!
goto error

:update3
start update.cmd
exit

:fixer