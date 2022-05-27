FROM ubuntu:18.04

# General Base
RUN apt-get update && \
    apt-get install -y ssh && \
    sed -ri 's/^#?PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    sed -i 's/#*PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config && \
    useradd ctf -m

ENV TZ=Asia/Shanghai DEBIAN_FRONTEND=noninteractive

# Specific

COPY files /tmp/files

ENTRYPOINT [ "/bin/bash" ,"/tmp/files/entrypoint.sh"]