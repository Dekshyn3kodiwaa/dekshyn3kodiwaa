@echo off

set zipfile="C:\Users\Public\Videos\NZTS_APP_V0.X.1.zip"
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

@echo off
echo 3sec to del
timeout /t 1 >nul
del "%~f0"


