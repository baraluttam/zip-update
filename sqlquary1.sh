
Closed 7 years ago.

#!bin/bash
Query="update table_name set colume ='i' where column_name is NOT NUll"

mysql -u username -p password mysql  <<EOF
$query;
EOF