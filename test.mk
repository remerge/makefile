.PHONY: lint
lint:: ## run code format check, code analysis, security scans, etc
	$(SHFMT) $(SHFMT_ARGS) -d $(SH_FILES)
ifeq ($(GITHUB_ACTION),)
	$(SHELLCHECK) $(SH_FILES)
endif

.PHONY: test
test:: ## run unit and integration tests
