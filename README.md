## Chrome Dockerfile


This repository contains **Dockerfile** of [Chrome](https://www.google.com/chrome/browser/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/dockerfile/chrome/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).


### Base Docker Image

* [dockerfile/ubuntu-desktop](http://dockerfile.github.io/#/ubuntu-desktop)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/dockerfile/chrome/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull dockerfile/chrome`

   (alternatively, you can build an image from Dockerfile: `docker build -t="dockerfile/chrome" github.com/dockerfile/chrome`)


### Usage

    docker run -it --rm -p 5901:5901 dockerfile/chrome

    USER=root vncserver :1 -geometry 1280x800 -depth 24

Connect to `vnc://<host>:5901` via VNC client.
