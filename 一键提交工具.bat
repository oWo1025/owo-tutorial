@echo off
chcp 65001 >nul
title Git 一键提交工具

echo ======================================
echo          Git 一键提交工具
echo ======================================
echo.

:: 1. 显示文件变更状态
echo [1/5] 查看当前文件变更状态...
git status
echo.

:: 2. 输入提交说明
set /p commit_msg=请输入提交说明（如 feat: 新增食材识别功能）: 
if "%commit_msg%"=="" (
    echo ❌ 提交说明不能为空
    pause
    exit /b
)
echo.

:: 3. 添加所有文件 + 提交到本地
echo [2/5] 正在提交到本地仓库...
git add .
git commit -m "%commit_msg%"
if %errorlevel% neq 0 (
    echo.
    echo ❌ 提交失败：没有检测到可提交的文件变更
    pause
    exit /b
)
echo ✅ 本地提交完成
echo.

:: 4. 拉取远程最新代码并自动合并
echo [3/5] 正在拉取远程最新代码并合并...
git pull
if %errorlevel% neq 0 (
    echo.
    echo ❌ 拉取/合并失败，大概率是出现了代码冲突
    echo 请手动打开冲突文件处理后，重新执行提交推送
    pause
    exit /b
)
echo ✅ 远程代码同步完成
echo.

:: 5. 推送到 GitHub 远程仓库
echo [4/5] 正在推送到远程仓库...
git push
if %errorlevel% neq 0 (
    echo.
    echo ❌ 推送失败，请查看上方错误信息
    pause
    exit /b
)

echo.
echo ======================================
echo ✅ 全部操作完成！代码已同步到 GitHub
echo ======================================
pause
exit /b