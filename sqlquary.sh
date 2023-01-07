#!/bin/bash
mysql --host=$DBHOST --user=$DBUSERNAME --password=$DBPASSWORD <<EOF
DROP TABLE IF EXISTS Validation_tmp_1.ZIPCodes;
CREATE TABLE Validation_tmp_1.ZIPCodes LIKE Validation_tmp.ZIPCodes;
INSERT Validation_tmp_1.ZIPCodes SELECT * FROM Validation_tmp.ZIPCodes;
DROP DATABASE IF EXISTS Validation_tmp;
EOF
