#!/bin/bash
#this is to copy table from validation.tmp to validation.
mysql --host=$DBHOST --user=$DBUSERNAME --password=$DBPASSWORD < ./createDB.sql
