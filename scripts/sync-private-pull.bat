@echo OFF

:: Syncing from synchronized folder to private"
robocopy "%SYNC_FOLDER_PRIVATE_DIR%" "%ORG_ROAM_PRIVATE_DIR%" /e /z 

echo "Sync private pull completed"

