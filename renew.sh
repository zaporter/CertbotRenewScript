#!/bin/sh

SCRIPT_PATH=`readlink -f "$0"`
SCRIPT_DIR=`dirname "$SCRIPT_PATH"`

/bin/date -R >> $SCRIPT_DIR/renewLog.txt
/snap/bin/certbot renew >> $SCRIPT_DIR/renewLog.txt

# /usr/bin/openvpnconfig reset

# crontab:
# 0 12 * * * /home/ubuntu/CertbotRenewScript/renew.sh
