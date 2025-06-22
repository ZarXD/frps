FROM ubuntu:22.04

RUN apt update && apt install -y wget unzip

# Download dan siapkan FRP
RUN wget https://github.com/fatedier/frp/releases/download/v0.62.1/frp_0.62.1_linux_amd64.tar.gz && \
    tar -xzf frp_0.62.1_linux_amd64.tar.gz && \
    mv frp_0.62.1_linux_amd64/frps /usr/local/bin/ && \
    rm -rf frp_0.62.1_linux_amd64*

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 7000 7500

ENTRYPOINT ["/entrypoint.sh"]
