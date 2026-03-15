@echo off
chcp 65001 >nul
title ZhiLi - AI Resume Analyzer

echo.
echo  ========================================
echo    ZhiLi - AI Resume Analyzer
echo  ========================================
echo.

python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo  [Error] Python not found. Please install Python 3.8+
    echo  https://www.python.org/downloads/
    pause
    exit /b
)

python -c "import webview" >nul 2>&1
if %errorlevel% neq 0 (
    echo  Installing pywebview, please wait...
    echo.
    pip install pywebview -i https://pypi.tuna.tsinghua.edu.cn/simple
    echo.
    if %errorlevel% neq 0 (
        echo  [Error] Install failed. Run manually: pip install pywebview
        pause
        exit /b
    )
    echo  [OK] Done!
    echo.
)

echo  Starting ZhiLi...
echo.
python app.py

if %errorlevel% neq 0 (
    echo.
    echo  [Error] Something went wrong.
    pause
)
