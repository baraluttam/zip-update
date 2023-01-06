#!/bin/bash
#currently using this but we can also use dropandcopytables.sql
mysql --host=$DBHOST --user=$DBUSERNAME --password=$DBPASSWORD <<EOF

SET @current_date = DATE_FORMAT(NOW(), '%Y_%m_%d');
SET @new_table_name = CONCAT('ZIPCodes_', @current_date);

SET @sql = CONCAT('RENAME TABLE Validation.ZIPCodes TO Validation.', @new_table_name);

PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

EOF

