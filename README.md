# httpd-go-docker
A bare-bones web server docker image written in go

build
=====
To build, run `sudo ./build.sh`.  This uses the offical golang container to build the static executable, and then package it as a docker.

run
===
To run the container to serve the current directory on port 80, run:
```bash
sudo docker run -v $PWD:/srv/www -p 80:80 bskaggs/httpd
```

To use port 8080 instead, run:
```bash
sudo docker run -v $PWD:/srv/www -p 8080:80 bskaggs/httpd
```
