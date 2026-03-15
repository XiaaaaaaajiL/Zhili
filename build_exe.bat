@echo off
chcp 65001 >nul
title Package ZhiLi to exe

echo.
echo  ========================================
echo    Package ZhiLi to standalone exe
echo  ========================================
echo.

python -c "import PyInstaller" >nul 2>&1
if %errorlevel% neq 0 (
    echo  Installing PyInstaller...
    pip install pyinstaller -i https://pypi.tuna.tsinghua.edu.cn/simple
)

echo  Packaging... (1-2 min)
echo.

pyinstaller --noconfirm --onefile --windowed --name "ZhiLi" --add-data "index.html;." app.py

echo.
if %errorlevel% equ 0 (
    echo  ========================================
    echo  [OK] Done! Find exe at: dist\ZhiLi.exe
    echo  ========================================
) else (
    echo  [Error] Package failed.
)
echo.
pause
