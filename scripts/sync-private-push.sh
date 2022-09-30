#!/bin/bash

# Pushes all changes from pkb/org-roam/private directory to a backup folder (preferable a hosting service folder)
# Required Environment Variables:
#   SYNC_FOLDER_PRIVATE_DIR=/.../
#   ORG_ROAM_PRIVATE_DIR=/.../pkb/org-roam/private

rsync -av "$ORG_ROAM_PRIVATE_DIR"/*.org "$SYNC_FOLDER_PRIVATE_DIR"

echo "Sync private push completed"

