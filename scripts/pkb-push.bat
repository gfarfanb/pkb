@echo off

:: Git push for pkb repo
:: Required Environment Variables:
::   PKB_HOME=C:\...\pkb
::   Path=%Path%;%PKB_HOME%\scripts

cd "%PKB_HOME%"
git checkout org-roam
git push origin org-roam

