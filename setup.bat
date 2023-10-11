@echo off
setlocal enabledelayedexpansion

:: Get the directory where the script resides
set SCRIPT_DIR=%~dp0

:: Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 goto NoPython
python --version 

:: Check if virtualenv is installed
python -m virtualenv --version >nul 2>&1
if errorlevel 1 goto NoVirtualenv
python -m virtualenv --version

:: Check if venv directory already exists in the script directory
if exist "%SCRIPT_DIR%venv" (
    echo "venv" already exists in script directory. 
    REM exit /b 1
    call "%SCRIPT_DIR%venv\Scripts\activate"
    goto Validate
)

:: Create virtual environment in the script directory
python -m virtualenv "%SCRIPT_DIR%venv"
if errorlevel 1 goto ErrorCreatingVenv

:: Activate the virtual environment
call "%SCRIPT_DIR%venv\Scripts\activate"
if errorlevel 1 goto ErrorActivatingVenv

:: Install packages from requirements.txt in the script directory
pip install -r "%SCRIPT_DIR%requirements.txt"
if errorlevel 1 goto ErrorInstallingPackages

:: Validate all required packages are installed
:Validate
for /F "tokens=1 delims==" %%i in (%SCRIPT_DIR%requirements.txt) do (
    echo check installation status of %%i 
    pip show %%i >nul 2>&1
    if errorlevel 1 (
        echo Missing library: %%i
        set missing=true
    )
)

if defined missing (
    echo Some libraries from requirements.txt are not installed. Check above for missing libraries.
    exit /b 1
)

echo All done successfully!
exit /b 0

:NoPython
echo Python is not installed. Please install Python and try again.
exit /b 1

:NoVirtualenv
echo virtualenv is not installed. Install it using "pip install virtualenv" and try again.
exit /b 1

:ErrorCreatingVenv
echo Error creating virtual environment.
exit /b 1

:ErrorActivatingVenv
echo Error activating the virtual environment.
exit /b 1

:ErrorInstallingPackages
echo Error installing packages from requirements.txt.
exit /b 1
