FROM scratch
LABEL maintainer="Gerard Braad <me@gbraad.nl>"                    
ENV DISTTAG=f35podman
ADD fedora-35-x86_64.tar.xz /
CMD ["/bin/bash"]
RUN dnf upgrade -y
RUN dnf install -y 'dnf-command(copr)'
RUN dnf -y copr enable rhcontainerbot/podman4
RUN dnf install podman podman-docker openssh-server procps-ng -y