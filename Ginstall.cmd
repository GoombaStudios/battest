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

echo @echo off>temp.cmd
echo powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/GoombaStudios/battest/main/GoombaInstallClient.cmd -Outfile GappStore.cmd">>temp.cmd
echo exit>>temp.cmd
start temp.cmd
ping github.com -n 2 >nul
del temp.cmd

color 2f
echo Done!
ping github.com -n 2 >nul
