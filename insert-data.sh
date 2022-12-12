#!/bin/bash
DBHost=database-1.ck1n4yzwola8.us-east-2.rds.amazonaws.com
echo "importing zip-codes-database-MYSQL-STANDARD.sql"
mysql --host=$DBHost --user=$DBUSERNAME --password=$DBPASSWORD Validation < /Users/uttambaral/code/zipcodes/*MYSQL-STANDARD.sql
echo "finished importing zip-codes-database-MYSQL-STANDARD.sql"
echo "importing zip-codes-database-STANDARD.sql"
mysql --host=$DBHost --user=$DBUSERNAME --password=$DBPASSWORD Validation < /Users/uttambaral/code/zipcodes/*database-STANDARD.sql
echo "finished imporitng zip-codes-database-STANDARD.sql"
