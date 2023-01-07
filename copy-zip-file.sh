#!/bin/bash

HOST="ftp.zip-codes.com"
USER="liveauctioneers"
PASSWORD="673v6B@xzuxJ"

SOURCE=$"ZIP-STANDARD"
ALL_FILES="*STANDARD-sql.zip"

ftp -invp $HOST <<EOF
user $USER $PASSWORD
cd $SOURCE
prompt
mget $ALL_FILES
bye
EOF

