#!/bin/bash
cat <<EOF > frps.ini
[common]
bind_port = ${BIND_PORT:-7000}
bind_udp_port = ${BIND_UDP_PORT:-7001}
dashboard_port = ${DASHBOARD_PORT:-7500}
dashboard_user = ${DASH_USER:-admin}
dashboard_pwd = ${DASH_PWD:-admin}
EOF

/usr/local/bin/frps -c frps.ini
