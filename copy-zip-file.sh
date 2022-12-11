!/bin/bash
HOST="ftp.zip-codes.com"
USER="liveauctioneers"
PASSWD="673v6B@xzuxJ"
!/bin/sh
SERVER="ftp.zip-codes.com"
ID="liveauctioneers"
PASSWD="673v6B@xzuxJ"

expect <<EOF 
spawn ftp $SERVER 
expect ": "
send $ID\r"
expect "Password:"
send $PASSWD\r"
expect "ftp>"
send "cd ZIP-STANDARD\r"
expect "ftp>"
send "prompt\r"
expect "ftp>"
send "mget *sql.zip\r"
expect "ftp>"
send "bye\r"
EOF