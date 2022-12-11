#!/bin/bash
DBHost=database-1.ck1n4yzwola8.us-east-2.rds.amazonaws.com
mysql --host=$DBHost --user=$DBUSERNAME --password=$DBPASSWORD
