#!/bin/bash
mysql --host=$DBHOST --user=$DBUSERNAME --password=$DBPASSWORD <<EOF
DROP DATABASE IF EXISTS Validation_tmp;
CREATE DATABASE IF NOT EXISTS Validation_tmp;
EOF