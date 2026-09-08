@echo off
chcp 65001 >nul 2>&1
setlocal

set "SKILL_DIR=%USERPROFILE%\.qoderworkcn\skills\cross-page-state-sync"
set "SKILL_URL=https://raw.githubusercontent.com/xhydsb/cross-page-state-sync/master/SKILL.md"

echo Installing cross-page-state-sync skill...

if not exist "%SKILL_DIR%" (
    mkdir "%SKILL_DIR%"
    echo   Created directory: %SKILL_DIR%
) else (
    echo   Directory already exists: %SKILL_DIR%
)

echo   Downloading SKILL.md...
curl -sL -o "%SKILL_DIR%\SKILL.md" "%SKILL_URL%"

if %ERRORLEVEL% neq 0 (
    echo [ERROR] Download failed. Please check your network connection.
    exit /b 1
)

if exist "%SKILL_DIR%\SKILL.md" (
    echo [OK] cross-page-state-sync skill installed successfully!
    echo      Location: %SKILL_DIR%\SKILL.md
) else (
    echo [ERROR] Installation failed. SKILL.md not found after download.
    exit /b 1
)

endlocal
