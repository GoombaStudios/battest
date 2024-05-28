@echo off
color 03

set ver=1.0

title Ginstall ver %ver%

cls
echo.
echo  Goomba Installer version %ver%                                                                                                    
echo.                                                                                                    
echo.                                                                                                    
echo.                                                                                                    
echo.                                                                                                    
echo.                                                   .-.                                              
echo.                                           .-*@@@@@@@@@@@@%+..                                      
echo.                                      .@@@@@@@@@@@@@@@@@@@@@@@@:                                    
echo.                                     -@@@@@@@@@@@@@@@@@@@@@@@@+                                     
echo.                                    =@@@@@@@@@@@@@@@@@@@@@@@@#.                                     
echo.                                   =@@@@@@@@@@@@@@+*@@@@@@@@%.                                      
echo.                                 .*@@@@@@@@@@@@@=. . . .+@@@.                                       
echo.                                 +@@@@@@@@@@@@+.                                                    
echo.                                :@@@@@@@@@@@@%. . . . . -= .#%@@:                                 
echo.                                 #@@@@@@@@@@@% . . @@@@@@@@@@@@@@@-                                 
echo.                                 .@@@@@@@@@@@# . . %@@@@@@@@@@@@@@+                                 
echo.                                 .#@@@@@@@@@@#. . . @@@@@@@@@@@@@@#                                 
echo.                                  :@@@@@@@@@@#. . . @#:....@@@@@@@@@.                                
echo.                                   +@@@@@@@@@@@=. . . . :#@@@@@@@@@.                                
echo.                                   :@@@@@@@@@@@@@@@*@@@@@@@@@@@@@@@:                                
echo.                                   .*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-                                
echo.                                    .%@@@@@@@@@@@@@@@@@@@@@@@@@@-.                                 
echo.                                        :#@@@@@@@@@@@@@@@@@@=.                                      
echo.                                            .:%@@@@@@@@+.                                           
echo.                                                  :                                                
echo.                                                                                                    
echo.                                                                                                    
echo.                                                                                                    
ping github.com -n 2 >nul
C:
cd "C:\"
md GoombaApps
cd GoombaApps

echo powershell -Command "Invoke-WebRequest powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/GoombaStudios/battest/main/GoombaInstallClient.cmd -Outfile GappStore.cmd">temp.cmd
start temp.cmd
ping github.com -n 2 >nul
del temp.cmd

color 2f
echo Done!
ping github.com -n 2 >nul
pause
