@echo off
setlocal
color 05
call :PingServer NAE ping-nae.ds.on.epicgames.com
call :PingServer NAC ping-nac.ds.on.epicgames.com
call :PingServer NAW ping-naw.ds.on.epicgames.com
call :PingServer BRAZIL ping-br.ds.on.epicgames.com
call :PingServer EU ping-eu.ds.on.epicgames.com
call :PingServer OCE ping-oce.ds.on.epicgames.com
call :PingServer ASIA ping-asia.ds.on.epicgames.com
call :PingServer ME ping-me.ds.on.epicgames.com

pause
exit /b

:PingServer
set "region=%~1"
set "host=%~2"
set "avg="

echo Pinging %region%...

for /f %%a in ('powershell -Command ^
    "try { $avg=(Test-Connection -ComputerName %host% -Count 3 -ErrorAction Stop | Measure-Object ResponseTime -Average).Average; [math]::Round($avg) } catch { '' }"') do set avg=%%a

if defined avg (
    echo %region%: %avg% ms
) else (
    echo %region%: Request timed out
)

echo.