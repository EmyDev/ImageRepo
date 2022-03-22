if ($args[0] -eq "backup") {
docker exec imagerepo-db-1 /usr/bin/mysqldump -u root --password=root geography | Set-Content backup.sql
Write-Host "The database has been stored in backup.sql"
} 
else {
get-content backup.sql | docker exec -i imagerepo-db-1 /usr/bin/mysql -u root  --password=root geography
Write-Host "The database has been restored from backup.sql"
}