FROM fatedier/frp:0.61.1
WORKDIR /frps
COPY frps.ini ./
COPY start.sh ./
CMD ["./start.sh"]
