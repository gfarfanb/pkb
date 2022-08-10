@echo OFF

:: Add to System Environment Variables:
::   CLOUD_PRIVATE_DIR=C:\...\
::   ORG_ROAM_PRIVATE_DIR=C:\...\pkb\org-roam\private

echo "Syncing from cloud dir to private"

robocopy "%CLOUD_PRIVATE_DIR%" "%ORG_ROAM_PRIVATE_DIR%" /e /z 

echo "Syncing from private to cloud dir"

robocopy "%ORG_ROAM_PRIVATE_DIR%" "%CLOUD_PRIVATE_DIR%" /e /z

echo "Sync completed"

