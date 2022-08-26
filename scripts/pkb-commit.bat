@echo off

:: Git add/commit for pkb repo
:: Required Environment Variables:
::   PKB_HOME=C:\...\pkb
::   Path=%Path%;%PKB_HOME%\scripts

set MESSAGE=%1

if "%MESSAGE%" == "" echo pkb: Missing commit message && exit /b

cd "%PKB_HOME%"
git checkout org-roam
git add -A
git commit -m "%MESSAGE%"

