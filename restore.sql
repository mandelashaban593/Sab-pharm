-- Restore the sales database from the latest backup
USE sales;
RESTORE DATABASE sales FROM DISK = 'C:\xampp\mysql\data\sales_backup_latest.bak';
