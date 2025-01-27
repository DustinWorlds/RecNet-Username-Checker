@echo off

set GREEN=[SUCCESS]
set RED=[ERROR]
set NC=

:: Check if Python is installed
where python >nul 2>&1
if %errorlevel% neq 0 (
    echo %RED% Python is not installed. Please install Python and try again.
    goto end
) else (
    echo %GREEN% Python is installed.
)

:: Check if pip is installed
python -m pip --version >nul 2>&1
if %errorlevel% neq 0 (
    echo %RED% Pip is not installed. Attempting to install it...
    python -m ensurepip --default-pip
    if %errorlevel% neq 0 (
        echo %RED% Error installing pip.
        goto end
    ) else (
        echo %GREEN% Pip was successfully installed.
    )
) else (
    echo %GREEN% Pip is installed.
)

:: Check if the requests module is installed
python -c "import requests" >nul 2>&1
if %errorlevel% neq 0 (
    echo %RED% Installing the requests package...
    python -m pip install requests
    if %errorlevel% neq 0 (
        echo %RED% Error installing the requests package.
        goto end
    ) else (
        echo %GREEN% The requests package was successfully installed.
    )
) else (
    echo %GREEN% The requests package is already installed.
)

:end
echo.
echo The script completed successfully.
echo Press any key to exit...
pause >nul
