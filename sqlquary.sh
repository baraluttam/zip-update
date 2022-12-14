#!/bin/bash
mysql --host=$DBHOST --user=$DBUSERNAME --password=$DBPASSWORD <<EOF
DROP TABLE IF EXISTS Validation_tmp.ZIPCodes;
CREATE TABLE Validation_tmp.ZIPCodes LIKE TEST_Validation_tmp.ZIPCodes;
INSERT Validation_tmp.ZIPCodes SELECT * FROM TEST_Validation_tmp.ZIPCodes;
EOF
