# brinkOS ![logo](logo_small.png)

[![Build Status](https://travis-ci.org/brinkOS/brinkOS.svg?branch=master)](https://travis-ci.org/brinkOS/brinkOS)

## About

This is an experimental distribution based off of Arch Linux. It is targeted for Developers/Engineers.
Currently the only supported platform is **x86_64**


Live ISO images are available under the releases section of this repo.


## Goals

* Provide a live image with easy to use installer.
* Provide a beautiful and useful desktop environment.
* Provide a set of useful packages out of the box for developers/engineers.
* Provide a pre-built packages that may not be available in the official repositories such as vscode.



## Building
The following commands all assume you have cloned this repo and it is your current working directory.

Build the brinkOS build container.

```shell
docker build -t brinkos .
```

Build brinkOS, this will run and place the iso image in `./iso/`

```shell
$ docker run -i -t --privileged -v `pwd`/iso:/iso --rm brinkos
```

To optionally interact with the build process
```shell
$ docker run -i -t --privileged -v `pwd`/iso:/iso --rm brinkos bash
[root@dc1f5b1f676f /]# cd /build/archlive/
[root@dc1f5b1f676f archlive]# ./build.sh -v
```
