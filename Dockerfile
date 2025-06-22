FROM ghcr.io/fatedier/frps:0.61.1
WORKDIR /app
COPY frps.ini ./
CMD ["./frps", "-c", "./frps.ini"]
