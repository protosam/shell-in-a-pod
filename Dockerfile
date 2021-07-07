FROM ubuntu:20.04
RUN apt update && DEBIAN_FRONTEND=noninteractive apt -y install shellinabox
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT /entrypoint.sh