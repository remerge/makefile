SHELL = bash

MKF_PREFIX ?= mkf
MKF_COMMON ?= $(MKF_PREFIX)/common
MKF_FILES = $(wildcard Makefile *.mk $(MKF_PREFIX)/*/*.mk)

include $(MKF_COMMON)/log.mk
include $(MKF_COMMON)/commands.mk

include $(MKF_COMMON)/help.mk
.DEFAULT_GOAL := help

include $(MKF_COMMON)/prepare.mk
include $(MKF_COMMON)/generate.mk
include $(MKF_COMMON)/test.mk
include $(MKF_COMMON)/build.mk

include $(MKF_COMMON)/mkf.mk
