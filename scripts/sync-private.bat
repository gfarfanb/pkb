@echo OFF

:: Syncing from synchronized folder to private"
robocopy "%SYNC_FOLDER_PRIVATE_DIR%" "%ORG_ROAM_PRIVATE_DIR%" /e /z 

:: Syncing from private to synchronized folder"
robocopy "%ORG_ROAM_PRIVATE_DIR%" "%SYNC_FOLDER_PRIVATE_DIR%" /e /z

echo "Sync private completed"

