#!/bin/bash
#this is to copy table from validation.tmp to validation.
mysql --host=database-1.ck1n4yzwola8.us-east-2.rds.amazonaws.com  --user=admin --password=123456789 -e < "./dropandcopytables.sql"


