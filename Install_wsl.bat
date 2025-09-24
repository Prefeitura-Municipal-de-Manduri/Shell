@echo off
echo =====================================================
echo Instalando o Windows Subsystem for Linux (WSL)...
echo =====================================================

dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
dism.exe /online /enable-feature /featurename:Microsoft-Hyper-V-All /all /norestart

echo Baixando o kernel do WSL 2...
powershell -Command "Start-Process 'https://aka.ms/wsl2kernel'"


echo Instalando o WSL e Ubuntu...
wsl --install

echo Listando distribuições disponíveis...
wsl --list --online

echo =====================================================
echo Concluído. Reinicie o computador para finalizar a instalação.
echo =====================================================
pause