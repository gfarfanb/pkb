@echo OFF

:: Syncing from private to synchronized folder"
robocopy "%ORG_ROAM_PRIVATE_DIR%" "%SYNC_FOLDER_PRIVATE_DIR%" /e /z

echo "Sync private push completed"

