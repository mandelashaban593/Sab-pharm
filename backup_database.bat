@echo off
setlocal enabledelayedexpansion

REM Set your XAMPP installation path
set "xampp_path=C:\xampp"

REM Set your MySQL username and password
set "mysql_user=root"
set "mysql_password="

REM Set your database name
set "database_name=sales"

REM Set the path where you want to save the backup file
set "backup_path=D:\backups\save"

REM Generate the current date and time for the backup file name
set "timestamp=%date:~10,4%%date:~4,2%%date:~7,2%_%time:~0,2%%time:~3,2%%time:~6,2%"
set "backup_file=%backup_path%\backup_%timestamp%.sql"

REM Set the maximum number of backups to retain (in this case, 7)
set "max_backups=7"

REM Delete older backups
for /f "skip=%max_backups% delims=" %%F in ('dir /b /o-d "%backup_path%\backup_*.sql"') do (
    del "%backup_path%\%%F"
)

REM Backup only data using mysqldump
"%xampp_path%\mysql\bin\mysqldump" --user=%mysql_user% --password=%mysql_password% --no-create-info --databases %database_name% > "%backup_file%"

echo Data backup completed. File saved at %backup_file%
