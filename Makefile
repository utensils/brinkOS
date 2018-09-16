#!/usr/bin/make -f

NAME=brinkos/builder
TEMPLATE=Dockerfile.template
SHELL=/bin/bash
.PHONY: all clean builder iso 
.DEFAULT_GOAL := iso

all: builder iso

builder:
	docker build -t $(NAME):latest .

iso: builder
	docker run -i -t --privileged -v `pwd`/iso:/iso --rm $(NAME)


