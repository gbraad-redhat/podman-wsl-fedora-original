#!/bin/sh
wget http://github.com/fedora-cloud/docker-brew-fedora/raw/36/x86_64/fedora-36-x86_64.tar.xz
docker build . -t podman-wsl-fedora:36

docker run --name podman-wsl podman-wsl-fedora:36
docker export podman-wsl | gzip > podman-wsl-f36.tar.gz
