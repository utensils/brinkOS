# brinkOS

[![Build Status](https://travis-ci.org/jamesbrink/brinkOS.svg?branch=master)](https://travis-ci.org/jamesbrink/brinkOS)

## About
Arch based Linux distribution for Engineers



## Usage
The following commands all assume you have cloned this repo and it is your current working directory.

Build the brinkOS build container.

```shell
docker build -t brinkos .
```

build brinkOS, this will run and place the iso image in `./iso/`

```shell
$ docker run -i -t --privileged -v `pwd`/iso:/iso --rm brinkos
```

or to optionally interact with the build process
```shell
$ docker run -i -t --privileged -v `pwd`/iso:/iso --rm brinkos bash
[root@dc1f5b1f676f /]# cd /build/archlive/
[root@dc1f5b1f676f archlive]# ./build.sh -v
```

