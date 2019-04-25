@echo off
title [ SOMNUS ][ TOOL INSTALLATION ]

:: // ]========================================================[ Color  Text ]=========================================================[  \\
	SETLOCAL EnableDelayedExpansion
	for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
	)
	goto :Beginoffile

	:ColorText
	echo off
	<nul set /p ".=%DEL%" > "%~2"
	findstr /v /a:%1 /R "^$" "%~2" nul
	del "%~2" > nul 2>&1
	goto :eof

	:Beginoffile
	
:: // ]========================================================[ Main Menu ]=========================================================[  \\
    :: Main Splash Load ::
    cls
    echo.
    echo.
    echo.
	call :ColorText 0B "         --------------------------"
	call :ColorText 03 "--------------------------"
	call :ColorText 09 "-------------------------"
	call :ColorText 01 "--------------------------"
    echo.
    call :ColorText 0F "         ---------------------------------------------"
    call :ColorText 80 "TEAM-SOMNUS"
    call :ColorText 0F "---------------------------------------------"
    echo.
    call :ColorText 0F "         --------------------------------------------"
    call :ColorText 0F "Type"
    call :ColorText 0C " -INSTALL"
    call :ColorText 0F "--------------------------------------------"
    echo.
    call :ColorText 0B "         --------------------------"
	call :ColorText 03 "--------------------------"
	call :ColorText 09 "-------------------------"
	call :ColorText 01 "--------------------------"
    :: CHECKS FOR COMMAND "-INSTALL" ::
    echo.
    set /p "INPUT= #>"
    if "%INPUT%"=="-INSTALL" goto :InstallStart:
:: // ]========================================================[ Installation ]=========================================================[  \\
    :: Install Splash Load ::
    :InstallStart:
    cls
    echo.
    echo.
    echo.
	call :ColorText 0B "         --------------------------"
	call :ColorText 03 "--------------------------"
	call :ColorText 09 "-------------------------"
	call :ColorText 01 "--------------------------"
    echo.
    call :ColorText 0F "         ---------------------------------------------"
    call :ColorText 80 "TEAM  SOMNUS"
    call :ColorText 0F "---------------------------------------------"
    echo.
    call :ColorText 0F "         ---------------------------------------------"
    call :ColorText 0B "[Installing]"
    call :ColorText 0F "---------------------------------------------"
    echo.
	call :ColorText 0B "         --------------------------"
	call :ColorText 03 "--------------------------"
	call :ColorText 09 "-------------------------"
	call :ColorText 01 "--------------------------"
    echo.
    :: Important Directory Install ::
    if not exist "\SomnOS\" mkdir "\SomnOS\"
    if not exist "\SomnOS\core\" mkdir "\SomnOS\core\"
    if not exist "\SomnOS\data\" mkdir "\SomnOS\data\"
    if not exist "\SomnOS\storage\" mkdir "\SomnOS\storage\"
    if not exist "\SomnOS\update\" mkdir "\SomnOS\update\"
    :: Core Directory Install ::
    if not exist "\SomnOS\core\core\" mkdir "\SomnOS\core\core\"
    if not exist "\SomnOS\core\process\" mkdir "\SomnOS\core\process\"
    if not exist "\SomnOS\core\graphics\" mkdir "\SomnOS\core\graphics\"
    if not exist "\SomnOS\core\backups\" mkdir "\SomnOS\core\backups\"
    :: Core Data Install ::
    if not exist "\SomnOS\data\userinfo\" mkdir "\SomnOS\data\userinfo\"
    if not exist "\SomnOS\data\version\" mkdir "\SomnOS\data\version\"
    if not exist "\SomnOS\date\\" mkdir "\SomnOS\data\"


    echo.

    
echo.
pause 
