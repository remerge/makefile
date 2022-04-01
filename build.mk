include $(MKF_COMMON)/commands.mk

PRETTIER = $(call need-command,prettier)
SPONGE = $(call need-command,sponge)

.PHONY: generate build

generate:: ## generate documentation, schemas, etc
build:: ## run all build steps and create artifact(s)
