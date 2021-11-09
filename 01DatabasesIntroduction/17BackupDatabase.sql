BACKUP DATABASE SoftUni1
TO DISK = 'C:\Downloads\Softuni-backup.bak'

USE master

DROP DATABASE SoftUni1

RESTORE DATABASE SoftUni1
FROM DISK = 'C:\Downloads\Softuni-backup.bak'