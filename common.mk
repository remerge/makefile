SHELL = zsh

MKF_PREFIX ?= mkf
MKF_COMMON ?= $(MKF_PREFIX)/common
MKF_FILES = $(shell echo $(MKF_PREFIX)/**/*.mk)

include $(MKF_COMMON)/help.mk
.DEFAULT_GOAL := help

include $(MKF_COMMON)/prepare.mk
include $(MKF_COMMON)/test.mk
include $(MKF_COMMON)/build.mk
