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

echo @echo off>>GappStore.cmd
echo :home>>GappStore.cmd
echo echo LOAING...>>GappStore.cmd
echo md data>>GappStore.cmd
echo cd data>>GappStore.cmd
echo title GappStore>>GappStore.cmd
echo del list.txt>>GappStore.cmd
echo powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/GoombaStudios/battest/main/AppList.txt -Outfile list.txt">>GappStore.cmd
echo powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/GoombaStudios/battest/lists/linkcode -Outfile links.cmd">>GappStore.cmd
echo call links.cmd>>GappStore.cmd
echo color 3f>>GappStore.cmd
echo cls>>GappStore.cmd
echo echo.>>GappStore.cmd
echo echo  What do you want to install?>>GappStore.cmd
echo echo.>>GappStore.cmd
echo type list.txt>>GappStore.cmd
echo echo.>>GappStore.cmd
echo set /p dl=>>GappStore.cmd
echo set dllink=0echo if %dl%==1 set dllink=%opt1%>>GappStore.cmd
echo if %dl%==1 set dlname=%n1%>>GappStore.cmd
echo if %dllink%==0 exit>>GappStore.cmd
echo if exist %dlname% goto al_inst>>GappStore.cmd
echo cd..>>GappStore.cmd
echo cd..>>GappStore.cmd
echo md %dlname%>>GappStore.cmd
echo cd %dlname%>>GappStore.cmd
echo powershell -Command "Invoke-WebRequest %dllink% -Outfile %dlname%.cmd">>GappStore.cmd
echo goto yes>>GappStore.cmd
echo :al_inst>>GappStore.cmd
echo cls>>GappStore.cmd
echo color 04>>GappStore.cmd
echo echo.>>GappStore.cmd
echo echo  Already installed.>>GappStore.cmd
echo echo.>>GappStore.cmd
echo pause>>GappStore.cmd
echo exit>>GappStore.cmd
echo :yes>>GappStore.cmd
echo cls>>GappStore.cmd
echo color 02>>GappStore.cmd
echo echo.>>GappStore.cmd
echo echo SUCCESS!>>GappStore.cmd
echo echo.>>GappStore.cmd
echo pause>>GappStore.cmd
echo goto home>>GappStore.cmd

color 2f
echo Done!
ping github.com -n 2 >nul
pause
