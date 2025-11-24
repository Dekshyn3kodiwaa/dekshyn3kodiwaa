@echo off

set zipfile="C:\Users\Public\Videos\NZTS.zip"
set outdir="%USERPROFILE%\Desktop"


if not exist %outdir% (
    mkdir %outdir%
)

tar -xf %zipfile% -C %outdir%

if %ERRORLEVEL% NEQ 0 (
    echo ❌ 
    pause
    exit /b
)


del %zipfile%

timeout 1

cd %USERPROFILE%\Desktop\NZTS
NZTSApp.exe

@echo off
echo 3sec to del
timeout /t 1 >nul
del "%~f0"

