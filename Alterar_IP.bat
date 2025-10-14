@echo off
title Configurador de IP - Prefeitura / Outra Rede
color 1F

set INTERFACE="Ethernet"

:MENU
cls
echo =======================================
echo     CONFIGURADOR DE IP - ETHERNET
echo =======================================
echo.
echo 1 - Definir IP Fixo (Prefeitura)
echo 2 - Definir IP Automatico (Outra Rede)
echo 0 - Sair
echo.
set /p opcao=Escolha uma opcao (0-2): 

if "%opcao%"=="1" goto IP_FIXO
if "%opcao%"=="2" goto IP_DHCP
if "%opcao%"=="0" exit
goto MENU

:IP_FIXO
cls
echo Configurando IP Fixo - Prefeitura...
netsh interface ip set address name=%INTERFACE% static 192.168.0.163 255.255.255.0 192.168.0.163
netsh interface ip set dns name=%INTERFACE% static 8.8.8.8
echo.
echo IP Fixo configurado com sucesso!
pause
goto MENU

:IP_DHCP
cls
echo Configurando IP Automatico - Outra Rede...
netsh interface ip set address name=%INTERFACE% source=dhcp
netsh interface ip set dns name=%INTERFACE% source=dhcp
echo.
echo IP Automatico configurado com sucesso!
pause
goto MENU
