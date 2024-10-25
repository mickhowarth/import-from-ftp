#!/bin/bash
HOST='ftp.server.com 22'   # change the host accordingly add port if needed
USER='yourusernamegoeshere'   # username also change
PASSWD='Passwordgoeshere'    # password also change
ftp -invp $HOST<<EOF
quote USER $USER 
quote PASS $PASSWD
bin
cd /        # location of the file on the target server
lcd "/home/my_downloaded_file/"  # location of the file to be stored on your local server
mget name_of_file_plus_extention.csv
bye
EOF
