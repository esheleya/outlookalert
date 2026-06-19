@echo off
echo Autorizando scripts no Windows...
powershell -Command "Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force"
echo.
echo Tentando abrir o monitor...
start /min powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -Command "$wshell = New-Object -ComObject WScript.Shell; $wshell.Popup('O Alerta foi ativado com sucesso!', 5, 'Sucesso', 64)"
pause
