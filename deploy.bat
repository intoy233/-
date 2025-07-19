@echo off
echo ================================
echo     智能交互平台部署工具
echo ================================
echo.

echo 正在检查部署环境...

:: 检查是否安装了 Node.js
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [错误] 未检测到 Node.js，请先安装 Node.js
    echo 下载地址: https://nodejs.org/
    pause
    exit /b 1
)

echo [✓] Node.js 已安装

:: 检查是否安装了 Vercel CLI
vercel --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [!] 未检测到 Vercel CLI，正在安装...
    npm install -g vercel
    if %errorlevel% neq 0 (
        echo [错误] Vercel CLI 安装失败
        pause
        exit /b 1
    )
)

echo [✓] Vercel CLI 已准备就绪

echo.
echo 开始部署到 Vercel...
echo.

:: 运行 Vercel 部署
vercel --prod

if %errorlevel% equ 0 (
    echo.
    echo ================================
    echo      部署成功！
    echo ================================
    echo.
    echo 您的网站已成功部署到 Vercel
    echo 请查看上方的 URL 地址
    echo.
    echo 重要提醒：
    echo 1. 请在 Supabase 控制台更新 Site URL
    echo 2. 添加新的 Redirect URLs
    echo 3. 测试所有功能是否正常
    echo.
) else (
    echo.
    echo [错误] 部署失败，请检查错误信息
    echo.
)

pause