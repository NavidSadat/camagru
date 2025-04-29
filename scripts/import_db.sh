#!/bin/bash
docker cp db_backups/backup.sql db:/backup.sql
docker exec -i db mysql -u root -pcamagru camagru < db:/backup.sql
echo "✅ DB import complete"

