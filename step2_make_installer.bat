@echo off
title ZhiLi - Step 2: Make Installer

echo.
echo  ==========================================
echo    ZhiLi Installer Builder - Step 2 of 2
echo    Creating Setup Program
echo  ==========================================
echo.

if not exist "dist\ZhiLi\ZhiLi.exe" (
    echo  [ERROR] dist\ZhiLi\ZhiLi.exe not found
    echo  Please run step1_build_exe.bat first
    pause
    exit /b
)

set INNO_PATH=""

if exist "C:\Program Files (x86)\Inno Setup 6\ISCC.exe" (
    set "INNO_PATH=C:\Program Files (x86)\Inno Setup 6\ISCC.exe"
    goto :found
)
if exist "C:\Program Files\Inno Setup 6\ISCC.exe" (
    set "INNO_PATH=C:\Program Files\Inno Setup 6\ISCC.exe"
    goto :found
)

echo  [ERROR] Inno Setup not found
echo.
echo  Please install Inno Setup 6 first:
echo  https://jrsoftware.org/isdl.php
echo.
echo  Or open Inno Setup Compiler manually:
echo  File - Open - select setup.iss - click Compile
echo.
pause
exit /b

:found
echo  [OK] Found Inno Setup
echo.
echo  Compiling installer...
echo.

if not exist installer_output mkdir installer_output

"%INNO_PATH%" setup.iss

echo.
if %errorlevel% equ 0 (
    echo  ==========================================
    echo  [SUCCESS] Installer created!
    echo.
    echo  File: installer_output\ZhiLi_v2_Setup.exe
    echo.
    echo  This is your final installer with:
    echo    - Install wizard
    echo    - Desktop shortcut
    echo    - Start menu entry
    echo    - Uninstaller
    echo  ==========================================
) else (
    echo  [ERROR] Compile failed. Check errors above.
)
echo.
pause
