#!/bin/bash
mysql --host=$DBHOST --user=$DBUSERNAME --password=$DBPASSWORD <<EOF
DROP TABLE IF EXISTS Validation.ZIPCodes;
CREATE TABLE Validation.ZIPCodes LIKE Validation_tmp.ZIPCodes;
INSERT Validation.ZIPCodes SELECT * FROM Validation_tmp.ZIPCodes;
EOF
