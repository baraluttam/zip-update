#!/bin/bash
DBUSERNAME=admin               #we will have to put this in circle ci environment variable
DBPASSWORD=123456789           #we will have to put this in circle ci environment variable
DBHost=database-1.ck1n4yzwola8.us-east-2.rds.amazonaws.com                    #change this to Stage DB or Prod DB end point.
echo "importing zip-codes-database-MYSQL-STANDARD.sql"
mysql --host=$DBHost --user=$DBUSERNAME --password=$DBPASSWORD Validation_tmp < *MYSQL-STANDARD.sql
echo "finished importing zip-codes-database-MYSQL-STANDARD.sql"
echo "importing zip-codes-database-STANDARD.sql"
mysql --host=$DBHost --user=$DBUSERNAME --password=$DBPASSWORD Validation_tmp < *database-STANDARD.sql
echo "finished imporitng zip-codes-database-STANDARD.sql"
