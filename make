#!/bin/sh
wget http://github.com/fedora-cloud/docker-brew-fedora/raw/35/x86_64/fedora-35-x86_64.tar.xz
docker build . -t podman-wsl-fedora:35

docker run --name podman-wsl podman-wsl-fedora:35
docker export podman-wsl | gzip > podman-wsl-f35.tar.gz
