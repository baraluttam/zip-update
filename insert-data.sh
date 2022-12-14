#!/bin/bash
                 #change this to Stage DB or Prod DB end point.
echo "importing zip-codes-database-MYSQL-STANDARD.sql"
mysql --host=$DBHOST --user=$DBUSERNAME --password=$DBPASSWORD Validation_tmp < *MYSQL-STANDARD.sql
echo "finished importing zip-codes-database-MYSQL-STANDARD.sql"
echo "importing zip-codes-database-STANDARD.sql"
mysql --host=$DBHOST --user=$DBUSERNAME --password=$DBPASSWORD Validation_tmp < *database-STANDARD.sql
echo "finished imporitng zip-codes-database-STANDARD.sql"
