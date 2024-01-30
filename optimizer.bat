@echo off

title otimizar

chkdsk c: /f /r /b

bcdedit /set increaseuserva 8192

bcdedit /set useplataformtick yes

bcdedit /set disabledynamitick yes 


title reparação (otimizar)

echo -
echo --
echo ---
echo ----
echo -----
echo ------
echo -------
echo --------
echo ---------

dism /online /cleanup-image /CheckHealth

title otimizar rede

echo -
echo --
echo ---
echo ----
echo -----
echo ------
echo -------
echo --------
echo ---------

ipconfig all
ipconfig renew
ipconfig /flushdns
netsh winsock reset

title otimizar (segunda vez)

fsutil behavior query memoryusage

fsutil behavior set memoryusage 2

title baixar script

del %temp%\*

del C:\Windows\temp\*

del C:\Windows\Prefetch\*

start %windir%\system32\RunDLL32.exe advapi32.dll
title otimizar (terceira vez)

cleanmgr

echo Exclua os arquivos hein

defrag C:\ /O

chkdsk /f /r

wuauclt.exe /updatenow

title feche agora aqui

pause

title limpar dados do navegador

del %windir\system32\index.dat /s

title teamoptimizer download

echo extraia e aperte qualquer tecla

curl -o output.zip https://codeload.github.com/GuiOtimizar/TeamOptimizer/zip/refs/heads/main

pause

"%userprofile%\Desktop\output\TeamOptimizer-main\TeamOptimizer.bat"

"%userprofile%\Desktop\output\TeamOptimizer-main\reiniciar.bat"
