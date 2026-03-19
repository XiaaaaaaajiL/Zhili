@echo off
title ZhiLi - Step 1: Build EXE

echo.
echo  ==========================================
echo    ZhiLi Installer Builder - Step 1 of 2
echo    Building EXE file
echo  ==========================================
echo.

python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo  [ERROR] Python not found
    echo  Please install Python 3.8+
    echo  https://www.python.org/downloads/
    pause
    exit /b
)

echo  [1/3] Installing dependencies...
pip install pywebview pyinstaller Pillow -q
echo  [OK] Dependencies installed
echo.

echo  [2/3] Generating app icon...
python make_icon.py
if not exist icon.ico (
    echo  [WARN] Icon generation failed, using default
)
echo.

echo  [3/3] Building EXE (this takes 1-3 minutes)...
echo.
if exist icon.ico (
    pyinstaller --noconfirm --onedir --windowed --name "ZhiLi" --icon "icon.ico" --add-data "index.html;." --add-data "icon.ico;." app.py
) else (
    pyinstaller --noconfirm --onedir --windowed --name "ZhiLi" --add-data "index.html;." app.py
)

echo.
if %errorlevel% equ 0 (
    echo  ==========================================
    echo  [SUCCESS] EXE built successfully!
    echo.
    echo  Output: dist\ZhiLi\ZhiLi.exe
    echo.
    echo  Next: run step2_make_installer.bat
    echo  ==========================================
) else (
    echo  [ERROR] Build failed. Check errors above.
)
echo.
pause
