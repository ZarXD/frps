FROM snowdreamtech/frps

WORKDIR /app
COPY frps.ini ./

CMD ["frps", "-c", "./frps.ini"]
