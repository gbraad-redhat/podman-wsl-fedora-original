FROM scratch
LABEL maintainer="Gerard Braad <me@gbraad.nl>"                    
ENV DISTTAG=f35podman
ADD fedora-35-x86_64.tar.xz /
CMD ["/bin/bash"]
RUN dnf upgrade -y \
 && dnf install -y 'dnf-command(copr)' \
 && dnf -y copr enable rhcontainerbot/podman4 \
 && dnf install podman podman-docker openssh-server procps-ng -y \
 && rm -rf /var/cache /var/log/dnf* /var/log/yum.*
