
FROM ubuntu:22.04

RUN apt-get update && apt-get install -y wget unzip
RUN wget https://github.com/fatedier/frp/releases/download/v0.62.1/frp_0.62.1_linux_amd64.tar.gz \
  && tar -xzf frp_0.62.1_linux_amd64.tar.gz \
  && mv frp_0.62.1_linux_amd64/frps /usr/local/bin/ \
  && rm -rf frp_0.62.1_linux_amd64 frp_0.62.1_linux_amd64.tar.gz

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
