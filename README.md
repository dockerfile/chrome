## Chrome Dockerfile


This repository contains **Dockerfile** of [Chrome](https://www.google.com/chrome/browser/) for [Docker](https://www.docker.io/)'s [trusted build](https://index.docker.io/u/dockerfile/chrome/) published to the public [Docker Registry](https://index.docker.io/).


### Dependencies

* [dockerfile/ubuntu-desktop](http://dockerfile.github.io/#/ubuntu-desktop)


### Installation

1. Install [Docker](https://www.docker.io/).

2. Download [trusted build](https://index.docker.io/u/dockerfile/chrome/) from public [Docker Registry](https://index.docker.io/): `docker pull dockerfile/chrome`

   (alternatively, you can build an image from Dockerfile: `docker build -t="dockerfile/chrome" github.com/dockerfile/chrome`)


### Usage

    docker run -it --rm -p 5901:5901 dockerfile/chrome

    USER=root vncserver :1 -geometry 1280x800 -depth 24

Connect to `vnc://<host>:5901` via VNC client.
