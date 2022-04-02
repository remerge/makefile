HELP_FILE ?= README.md
HELP_GENERATE = $(MKF_COMMON)/help.sh

.PHONY: help
help:: ## display this help text
help:: $(HELP_FILE)
	@$(GLOW) $(HELP_FILE)

generate:: $(HELP_FILE)
$(HELP_FILE): $(HELP_GENERATE) $(MKF_FILES)
	@$(HELP_GENERATE) $(HELP_FILE) $(MAKEFILE_LIST) | \
	$(PRETTIER) --parser markdown | $(SPONGE) $(HELP_FILE)
