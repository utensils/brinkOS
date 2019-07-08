# !/usr/bin/make - f

SHELL                   := /usr/bin/env bash
DISTROS                 ?= ArchLinux AlpineLinux

.DEFAULT_GOAL := ArchLinux

.PHONY: $(DISTROS)
$(DISTROS):
	$(MAKE) -C $(@)


