#!/bin/bash

# Fetches all changes from backup folder (preferably a hosting service folder) to the pkb/org-roam/private
# Required Environment Variables:
#   SYNC_FOLDER_PRIVATE_DIR=/.../
#   ORG_ROAM_PRIVATE_DIR=/.../pkb/org-roam/private

rsync -av "$SYNC_FOLDER_PRIVATE_DIR"/*.org "$ORG_ROAM_PRIVATE_DIR"

echo "Sync private pull completed"

