HELP_FILE ?= Makefile.md
HELP_GENERATE = $(MKF_COMMON)/help.sh

.DEFAULT_GOAL := help

.PHONY: help
help::
help:: $(HELP_FILE)
ifneq ($(shell command -v glow),)
	@glow $(HELP_FILE)
else
ifneq ($(shell command -v bat),)
	@bat -p $(HELP_FILE)
else
	@cat $(HELP_FILE)
endif
endif

$(HELP_FILE): $(HELP_GENERATE) $(MKF_FILES)
	bash $(HELP_GENERATE) $(HELP_FILE) $(MAKEFILE_LIST)
generate:: $(HELP_FILE)
