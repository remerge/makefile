SHELLCHECK = $(call need-command,shellcheck)

.PHONY: lint
lint:: ## run code format check, code analysis, security scans, etc
	$(SHFMT) $(SHFMT_ARGS) -d $(SH_FILES)
	$(SHELLCHECK) $(SH_FILES)

.PHONY: test
test:: ## run unit and integration tests
