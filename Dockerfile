FROM scratch
LABEL maintainer="Gerard Braad <me@gbraad.nl>"                    
ENV DISTTAG=f36podman
ADD fedora-36-x86_64.tar.xz /
CMD ["/bin/bash"]
RUN dnf upgrade -y \
 && dnf install podman podman-docker openssh-server procps-ng -y \
 && rm -rf /var/cache /var/log/dnf* /var/log/yum.*
