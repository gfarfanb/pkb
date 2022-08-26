@echo off

:: Git status for pkb repo
:: Required Environment Variables:
::   PKB_HOME=C:\...\pkb
::   Path=%Path%;%PKB_HOME%\scripts

cd "%PKB_HOME%"
git status

