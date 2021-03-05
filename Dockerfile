FROM remnux/rizin:latest
ENV DEBIAN_FRONTEND=noninteractive
ENV TERM xterm-256color
ENV LC_ALL C.UTF-8

RUN cd /etc/apt && \
    sed -i 's/archive.ubuntu.com/mirror.kakao.com/g' sources.list

RUN apt-get update && \
    apt-get install -y sudo gcc-multilib cmake vim build-essential pkg-config

# install r2ghidra
RUN rz-pm -i rz-ghidra

# install pwndbg
WORKDIR /home/nonroot
RUN git clone https://github.com/pwndbg/pwndbg.git
WORKDIR /home/nonroot/pwndbg
RUN ./setup.sh

# install pwntools
RUN pip3 install pwntools

USER nonroot
WORKDIR /home/nonroot

CMD ["bash", "-l"]
