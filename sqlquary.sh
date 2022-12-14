#!/bin/bash
mysql --host=database-1.ck1n4yzwola8.us-east-2.rds.amazonaws.com  --user=admin --password=123456789 <<EOF
DROP TABLE IF EXISTS Validation.ZIPCodes;
CREATE TABLE Validation.ZIPCodes LIKE Validation_tmp.ZIPCodes;
INSERT Validation.ZIPCodes SELECT * FROM Validation_tmp.ZIPCodes;
EOF
