SHELL = bash

MKF_PREFIX ?= mkf
MKF_COMMON ?= $(MKF_PREFIX)/common
MKF_FILES = $(wildcard Makefile *.mk $(MKF_PREFIX)/*/*.mk)

.PHONY: clean
clean:: ## remove build artifacts and caches
	@:

.PHONY: reset
reset:: ## reset repository to remote state
	@:

.PHONY: install
install:: ## prepare environment and install dependencies
	@:

.PHONY: update
update:: ## update environment and dependencies
	@:

.PHONY: generate
generate:: ## generate documentation, configuration, schemas, etc
	@:

.PHONY: check
check:: ## run pre commit formatters and linters
	@:

.PHONY: test
test:: ## run unit and integration test cases
	@:

.PHONY: build
build:: ## run build steps and create artifact
	@:

include $(MKF_COMMON)/git.mk
include $(MKF_COMMON)/mkf.mk
include $(MKF_COMMON)/pre-commit.mk

include $(MKF_COMMON)/help.mk
