#!/bin/bash
#currently using this but we can also use dropandcopytables.sql
mysql --host=$DBHost --user=$DBUSERNAME --password=$DBPASSWORD <<EOF

CREATE TABLE Validation.ZIPCodes LIKE Validation_tmp.ZIPCodes;
INSERT Validation.ZIPCodes SELECT * FROM Validation_tmp.ZIPCodes;
DROP DATABASE IF EXISTS Validation_tmp;

EOF

