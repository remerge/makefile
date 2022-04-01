include $(MKF_COMMON)/commands.mk
include $(MKF_COMMON)/build.mk

HELP_FILE ?= README.md
HELP_COMMANDS = glow bat cat
HELP_COMMAND = $(call first-command,$(HELP_COMMANDS))
HELP_GENERATE = $(MKF_COMMON)/help.sh

.PHONY: help
help:: ## display this help text
help:: $(HELP_FILE)
	@$(HELP_COMMAND) $(HELP_FILE)

generate:: $(HELP_FILE)
$(HELP_FILE): $(HELP_GENERATE) $(MKF_FILES)
	$(call log,notice,">>> generate README.md ...")
	@$(HELP_GENERATE) $(HELP_FILE) $(MAKEFILE_LIST) | \
	$(PRETTIER) --parser markdown | $(SPONGE) $(HELP_FILE)
