#!/bin/bash

cat <<EOF > frps.ini
[common]
bind_port = 80
dashboard_port = 7500
dashboard_user = admin
dashboard_pwd = admin
tls_only = false
log_level = trace
log_file = /dev/stdout
EOF

/usr/local/bin/frps -c frps.ini
