#!/bin/bash
mkdir -p db_backups
docker exec db mysqldump -u root -pcamagru camagru > db_backups/backup.sql
echo "✅ Exported DB to db_backups/backup.sql"
