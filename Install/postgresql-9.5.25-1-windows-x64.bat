@echo off
:: ed2k://|file|postgresql-9.5.25-1-windows-x64.exe|70379488|811f37749ac87ff1e4757b6397a3a68a|
curl -O https://get.enterprisedb.com/postgresql/postgresql-9.5.25-1-windows-x64.exe
postgresql-9.5.25-1-windows-x64.exe  --unattendedmodeui minimal --mode unattended  --superpassword "root123"
