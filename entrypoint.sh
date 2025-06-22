#!/bin/bash

cat <<EOF > frps.ini
[common]
bind_port = 7000
dashboard_port = 7500
dashboard_user = admin
dashboard_pwd = admin
EOF

# Ini penting: jalanin frps sebagai foreground (jangan & atau background)
./frps -c frps.ini
