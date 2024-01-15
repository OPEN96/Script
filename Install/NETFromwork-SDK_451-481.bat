@echo off
color 3f
cls
%~d0 
cd %~dp0
set dpath=NDP
if not exist %dpath% (
 md %dpath%
 ) 
cd %dpath%

cls
title download

curl -O https://download.microsoft.com/download/9/6/0/96075294-6820-4F01-924A-474E0023E407/NDP451-KB2861696-x86-x64-DevPack.exe
curl -O https://download.microsoft.com/download/4/3/B/43B61315-B2CE-4F5B-9E32-34CCA07B2F0E/NDP452-KB2901951-x86-x64-DevPack.exe
curl -O https://download.visualstudio.microsoft.com/download/pr/33a48e6c-c0d1-4321-946b-042b92bad691/dbfac572c9334dc9292d40751aaf1a0c/ndp46-targetingpack-kb3045566.exe
curl -O https://download.visualstudio.microsoft.com/download/pr/33a48e6c-c0d1-4321-946b-042b92bad691/a9a88bd451286ab9ea015ecc2208d725/ndp461-devpack-kb3105179-enu.exe
curl -O https://download.visualstudio.microsoft.com/download/pr/ea744c52-1db4-4173-943d-a5d18e7e0d97/105c0e17be525bb0cebc7795d7aa1c32/ndp462-devpack-kb3151934-enu.exe
curl -O https://download.visualstudio.microsoft.com/download/pr/fe069d49-7999-4ac8-bf8d-625282915070/d52a6891b5014014e1f12df252fab620/ndp47-devpack-kb3186612-enu.exe
curl -O https://download.visualstudio.microsoft.com/download/pr/e5eb8d37-5bbd-4fb7-a71d-b749e010ef9f/601437d729667ecd29020a829fbc4881/ndp471-devpack-enu.exe
curl -O https://download.visualstudio.microsoft.com/download/pr/158dce74-251c-4af3-b8cc-4608621341c8/9c1e178a11f55478e2112714a3897c1a/ndp472-devpack-enu.exe
curl -O https://download.visualstudio.microsoft.com/download/pr/714a99a2-db28-432e-9a39-4345ba11e73f/5108686aec021898cec3de2cc4d9fd3c/ndp48-devpack-enu.exe
curl -O https://download.microsoft.com/download/4/b/2/cd00d4ed-ebdd-49ee-8a33-eabc3d1030e3/NDP481-DevPack-ENU.exe

cls
title install

NDP451-KB2861696-x86-x64-DevPack.exe /q /norestart
NDP452-KB2901951-x86-x64-DevPack.exe /q /norestart
ndp46-targetingpack-kb3045566.exe /q /norestart
ndp461-devpack-kb3105179-enu.exe /q /norestart
ndp462-devpack-kb3151934-enu.exe /q /norestart
ndp47-devpack-kb3186612-enu.exe /q /norestart
ndp471-devpack-enu.exe /q /norestart
ndp472-devpack-enu.exe /q /norestart
ndp48-devpack-enu.exe /q /norestart
NDP481-DevPack-ENU.exe /q /norestart

cls
title del
del NDP451-KB2861696-x86-x64-DevPack.exe 
del NDP452-KB2901951-x86-x64-DevPack.exe 
del ndp46-targetingpack-kb3045566.exe  
del ndp461-devpack-kb3105179-enu.exe  
del ndp462-devpack-kb3151934-enu.exe 
del ndp47-devpack-kb3186612-enu.exe 
del ndp471-devpack-enu.exe  
del ndp472-devpack-enu.exe 
del ndp48-devpack-enu.exe  
del NDP481-DevPack-ENU.exe 


cd  %~dp0
rmdir %dpath%
