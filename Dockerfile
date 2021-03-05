FROM remnux/rizin:latest
ENV DEBIAN_FRONTEND=noninteractive
ENV TERM xterm-256color
ENV LC_ALL C.UTF-8

RUN cd /etc/apt && \
    sed -i 's/archive.ubuntu.com/mirror.kakao.com/g' sources.list

RUN apt-get update && \
    apt-get install -y gcc-multilib cmake vim build-essential pkg-config

# install r2ghidra
RUN rz-pm -i rz-ghidra

USER nonroot
WORKDIR /home/nonroot

CMD ["bash", "-l"]
