@echo off
color 3f
cls
%~d0 
cd %~dp0
set dpath=VisualC++RedistributablePackage
if not exist %dpath% (
 md %dpath%
 ) 
cd %dpath%

cls
title Microsoft Visual C++ 2005 Service Pack 1 Redistributable Package MFC 安全更新
echo Microsoft Visual C++ 2005 Service Pack 1 Redistributable Package MFC 安全更新
curl -O https://download.microsoft.com/download/4/A/2/4A22001F-FA3B-4C13-BF4E-42EC249D51C4/vcredist_x86.EXE 
vcredist_x86.EXE /q
del vcredist_x86.EXE
curl -O https://download.microsoft.com/download/4/A/2/4A22001F-FA3B-4C13-BF4E-42EC249D51C4/vcredist_x64.EXE
vcredist_x64.EXE /q 
del vcredist_x64.EXE


cls
title Microsoft Visual C++ 2008 Service Pack 1 Redistributable Package MFC 安全更新
echo Microsoft Visual C++ 2008 Service Pack 1 Redistributable Package MFC 安全更新
curl -O https://download.microsoft.com/download/5/D/8/5D8C65CB-C849-4025-8E95-C3966CAFD8AE/vcredist_x86.exe
vcredist_x86.exe /q
del vcredist_x86.exe 
curl -O https://download.microsoft.com/download/5/D/8/5D8C65CB-C849-4025-8E95-C3966CAFD8AE/vcredist_x64.exe
vcredist_x64.exe /q
del vcredist_x64.exe


cls
title Microsoft Visual C++ 2010 Service Pack 1 Redistributable Package MFC 安全更新
echo Microsoft Visual C++ 2010 Service Pack 1 Redistributable Package MFC 安全更新
curl -O https://download.microsoft.com/download/1/6/5/165255E7-1014-4D0A-B094-B6A430A6BFFC/vcredist_x86.exe
vcredist_x86.exe /q /norestart
del vcredist_x86.exe
curl -O https://download.microsoft.com/download/1/6/5/165255E7-1014-4D0A-B094-B6A430A6BFFC/vcredist_x64.exe
vcredist_x64.exe /q /norestart
del vcredist_x64.exe


cls
title Visual C++ Redistributable for Visual Studio 2012 Update 4
echo Visual C++ Redistributable for Visual Studio 2012 Update 4
curl -O https://download.microsoft.com/download/9/C/D/9CD480DC-0301-41B0-AAAB-FE9AC1F60237/VSU4/vcredist_x86.exe
vcredist_x86.exe /q /norestart
del vcredist_x86.exe
curl -O https://download.microsoft.com/download/9/C/D/9CD480DC-0301-41B0-AAAB-FE9AC1F60237/VSU4/vcredist_x64.exe
vcredist_x64.exe /q /norestart
del vcredist_x64.exe


cls
title Update for Visual C++ 2013 Redistributable Package
echo Update for Visual C++ 2013 Redistributable Package
curl -O https://download.visualstudio.microsoft.com/download/pr/10912119/33c0eec4a4c7aa0e2d7891f5237e5890/vcredist_x86.exe
vcredist_x86.exe /q /norestart
del vcredist_x86.exe
curl -O https://download.visualstudio.microsoft.com/download/pr/10912040/8a9bc6a378988031b4de96bf6eecbe37/vcredist_x64.exe
vcredist_x64.exe /q /norestart
del vcredist_x64.exe


:: cls
:: title Microsoft Visual C++ 2015 Redistributable Update 3
:: echo Microsoft Visual C++ 2015 Redistributable Update 3
:: curl -O https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x86.exe
:: vc_redist.x86.exe /q /norestart
:: del vc_redist.x86.exe
:: curl -O https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe
:: vc_redist.x64.exe /q /norestart
:: del vc_redist.x64.exe


:: cls
:: title Microsoft Visual C++ Redistributable for Visual Studio 2017
:: echo Microsoft Visual C++ Redistributable for Visual Studio 2017
:: curl -O https://download.visualstudio.microsoft.com/download/pr/2b5bcd2f-0dbc-4b83-90a3-3b1c5ae77e62/0252474394129dbab6ff9ce24f1c6a3c/vc_redist.x86.exe
:: vc_redist.x86.exe /q /norestart
:: del vc_redist.x86.exe
:: curl -O https://download.visualstudio.microsoft.com/download/pr/4100b84d-1b4d-487d-9f89-1354a7138c8f/5B0CBB977F2F5253B1EBE5C9D30EDBDA35DBD68FB70DE7AF5FAAC6423DB575B5/VC_redist.x64.exe
:: VC_redist.x64.exe /q /norestart
:: del VC_redist.x64.exe

cls
title Visual Studio Visual C++ 2015 - 2022
echo Visual Studio Visual C++ 2015 - 2022
:: curl -O https://aka.ms/vs/17/release/vc_redist.x86.exe -L  rem -L 参数会让 HTTP 请求跟随服务器的重定向。curl 默认不跟随重定向。
curl -O  https://download.visualstudio.microsoft.com/download/pr/b2519016-4a13-4120-936c-cae003d567c4/8AE59D82845159DB3A70763F5CB1571E45EBF6A1ADFECC47574BA17B019483A0/VC_redist.x86.exe
VC_redist.x86.exe /q /norestart
del VC_redist.x86.exe
:: curl -O https://aka.ms/vs/17/release/vc_redist.x64.exe -L
curl -O https://download.visualstudio.microsoft.com/download/pr/8b92f460-7e03-4c75-a139-e264a770758d/26C2C72FBA6438F5E29AF8EBC4826A1E424581B3C446F8C735361F1DB7BEFF72/VC_redist.x64.exe
VC_redist.x64.exe /q /norestart
del VC_redist.x64.exe

cd  %~dp0
rmdir %dpath%
