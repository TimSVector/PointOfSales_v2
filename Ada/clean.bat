@echo off
echo Cleaning...
del /q *.exe *.o *.ali >nul 2>&1

if errorlevel 1 (
    echo Build FAILED
    exit /b 1
) else (
    echo Build SUCCEEDED
)
