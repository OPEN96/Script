@echo off
:: dl.min.io
:: 设置国内地址
set host=dl.minio.org.cn

if not exist minio.exe (
curl -o minio.exe -fL  https://%host%/server/minio/release/windows-amd64/archive/minio.RELEASE.2022-12-07T00-56-37Z
)
:: ed2k://|file|minio.exe|100545920|6348f359e30222fadcd703a541b0de33|
if not exist mc.exe (
curl -o mc.exe -fL  https://%host%/client/mc/release/windows-amd64/archive/mc.RELEASE.2022-12-02T23-48-47Z
)
:: ed2k://|file|mc.exe|26062720|014de65fee2479d9aa4ecae990b6dcbf|

:: 获取本机ip
for /f "tokens=16" %%i in ('ipconfig ^|find /i "ipv4"') do (
set myip=%%i
goto out
)
:out

color 5f
cls

:: 设置环境变量
set MINIO_SERVER_URL=http://%myip%:9000
set MINIO_ROOT_USER=admin
set MINIO_ROOT_PASSWORD=admin123
Title minio-server
minio server ./public --console-address ":9001"      