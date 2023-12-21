-- Create a timestamp for the backup file
SET @timestamp = DATE_FORMAT(NOW(), '%Y%m%d%H%i%s');

-- Backup the sales database
BACKUP DATABASE sales TO DISK = 'C:\xampp\mysql\data\sales_backup_@timestamp.bak';

-- Delete old backup files, keeping only the latest 6
DECLARE @backupCount INT;
SET @backupCount = (SELECT COUNT(*) FROM information_schema.tables WHERE table_schema = 'sales_backup' AND table_name LIKE 'sales_backup%');
WHILE @backupCount > 6 DO
    SET @backupCount = @backupCount - 1;
    SET @oldestBackup = (SELECT MIN(table_name) FROM information_schema.tables WHERE table_schema = 'sales_backup' AND table_name LIKE 'sales_backup%');
    SET @dropQuery = CONCAT('DROP TABLE sales_backup.', @oldestBackup);
    PREPARE stmt FROM @dropQuery;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END WHILE;
