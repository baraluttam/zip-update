#!/bin/bash
#currently using this but we can also use dropandcopytables.sql
mysql --host=$DBHOST --user=$DBUSERNAME --password=$DBPASSWORD --database=Validation <<EOF

START TRANSACTION;
SET @tables = NULL;

SELECT GROUP_CONCAT(table_name) INTO @tables
FROM information_schema.tables
WHERE table_schema = 'Validation' AND table_name LIKE 'ZIPCodes_%' AND table_name != 'ZIPCodes';

SET @tables = CONCAT('DROP TABLE ', @tables);
PREPARE stmt FROM @tables;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
COMMIT;

EOF
