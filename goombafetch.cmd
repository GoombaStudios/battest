@echo off
color 03

rem Get the Windows version string
for /f "tokens=4-5 delims=[.] " %%i in ('ver') do (
    set majorVersion=%%i
    set minorVersion=%%j
)

rem Determine the custom OS name based on the version numbers
if "%majorVersion%"=="10" (
    if "%minorVersion%"=="0" (
        rem Windows 10 or 11
        for /f "tokens=2 delims= " %%i in ('wmic os get caption /value') do set osCaption=%%i
        if /i "%osCaption%"=="Windows 11" (
            set osName=11
        ) else (
            set osName=10
        )
    )
) else if "%majorVersion%"=="6" (
    if "%minorVersion%"=="3" (
        set osName=8
    ) else if "%minorVersion%"=="2" (
        set osName=8
    ) else if "%minorVersion%"=="1" (
        set osName=7
    ) else if "%minorVersion%"=="0" (
        set osName=vista
    )
) else if "%majorVersion%"=="5" (
    if "%minorVersion%"=="1" (
        set osName=xp
    ) else (
        set osName=old
    )
) else (
    set osName=old
)


for /f "skip=1" %%p in ('wmic os get TotalVisibleMemorySize') do ( 
  set m=%%p
  goto :done
)
:done
set /a memMB=%m% / 1024
set /a memGB=%memMB% / 1024

for /f "tokens=2 delims==" %%a in ('wmic cpu get Name /format:value') do (
    set cpu_name=%%a
)

for /f "tokens=2 delims==" %%a in ('wmic path win32_videocontroller get name /format:value') do (
    set gpu_name=%%a
)

if %osName%==10 set osName=10/11


REM For testing:
::set osName=old

set line1=Goombafetch
set line2=Microsoft Windows %osName%
set line3=
set line4=User: %username% [%HOMEPATH%]
set line5=Homedrive: %homedrive%
set line6=Memory: %memMB%mb [%memGB%gb]
set line7=CPU Architecture: %PROCESSOR_ARCHITECTURE%
set line8=CPU: %cpu_name%
set line9=GPU: %gpu_name%
set line10=


goto %osName%

::cls
::echo.
::echo %DATE% at %TIME%
::echo.
::echo.
::echo.	############ . ############	Goombafetch
::echo.	############ . ############	Microsoft Windows 11
::echo.	############ . ############	
::echo.	############ . ############	User: %username% [%HOMEPATH%]
::echo.	############ . ############	Homedrive: %homedrive%
::echo.	############ . ############	Memory: %memMB%mb [%memGB%gb]
::echo.					CPU Architecture: %PROCESSOR_ARCHITECTURE%
::echo.	############ . ############	CPU: %cpu_name%
::echo.	############ . ############	GPU: %gpu_name%
::echo.	############ . ############	
::echo.	############ . ############	
::echo.	############ . ############	
::echo.	############ . ############	
::pause >nul
::echo.


:10/11

cls
echo.
echo %DATE% at %TIME%
echo.
echo.
echo.	############ . ############	%line1%
echo.	############ . ############	%line2%
echo.	############ . ############	%line3%
echo.	############ . ############	%line4%
echo.	############ . ############	%line5%
echo.	############ . ############	%line6%
echo.					%line7%
echo.	############ . ############	%line8%
echo.	############ . ############	%line9%
echo.	############ . ############	%line10%
echo.	############ . ############	
echo.	############ . ############	
echo.	############ . ############	
pause >nul
exit

:8

cls
echo.
echo %DATE% at %TIME%
echo.
echo.			____++++##
echo.	_____++#####. ############	%line1%
echo.	############. ############	%line2%
echo.	############. ############	%line3%
echo.	############. ############	%line4%
echo.	############. ############	%line5%
echo.					%line6%
echo.	############. ############	%line7%
echo.	############. ############	%line8%
echo.	############. ############	%line9%
echo.	****++++####. ############	%line10%
echo.		        ****++++##                                                                                                                                        	
pause >nul
exit

:7
color 01
cls
echo.
echo %DATE% at %TIME%
echo.
echo.
echo.	__        ___       
echo.	\ \      / (_)_ __  	%line1%
echo.	 \ \ /\ / /I I '_ \ 	%line2%
echo.	  \ V  V / I I I I I	%line3%
echo.	 __\_/\_/  I_I_I I_I	%line4%
echo.	I___  I			%line5%     
echo.	   / / 			%line6%         
echo.	  / /  			%line7%			             
echo.	 /_/			%line8%
echo.				%line9%
echo.				%line10%
echo.                
pause >nul
exit

:vista

color 02

cls
echo.
echo %DATE% at %TIME%
echo.
echo.
echo.	__        ___       
echo.	\ \      / (_)_ __  		%line1%
echo.	 \ \ /\ / /I I '_ \ 		%line2%
echo.	  \ V  V / I I I I I		%line3%
echo.	 __\_/\_/  I_I_I I_I		%line4%
echo.	\ \   / (_)___I I_ __ _ 	%line5%
echo.	 \ \ / /I / __I __/ _` I	%line6%
echo.	. \ V / I \__ \ II (_ I 	%line7%
echo.	 . \_/  I_I___/\__\__,_I	%line8%
echo.					%line9%
echo.					%line10%
echo.                
pause >nul
exit

:xp

color 02

cls
echo.
echo %DATE% at %TIME%
echo.
echo.
echo.	__        ___       
echo.	\ \      / (_)_ __  		%line1%
echo.	 \ \ /\ / /I I '_ \ 		%line2%
echo.	  \ V  V / I I I I I		%line3%
echo.	 __\_/\_/  I_I_I I_I		%line4%
echo.	\ \/ /  _ \ 				%line5%
echo.	 \  /I I_) I        		%line6%
echo.	 /  \I  __/         		%line7%
echo.	/_/\_\_I    			%line8%
echo.					%line9%
echo.					%line10%
echo.                
pause >nul
exit

:old
color 0f

cls
echo.
echo %DATE% at %TIME%
echo.
echo.	  ___ . _. . .____  
echo. 	 / _ \ I I   I  _ \ 
echo.	 I I I I I   I I I I
echo.	 I I_I I I___I I_I I
echo.	 \___/ I_____I____/ 
echo.				
echo.                
echo.	 %line1%
echo.	 %line2%
echo.	 %line3%
echo.	 %line4%
echo.	 %line5%
echo.	 %line6%
echo.	 %line7%
echo.	 %line8%
echo.	 %line9%
echo.	 %line10%
pause >nul
exit