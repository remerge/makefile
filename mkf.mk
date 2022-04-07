ifneq ($(MKF_PREFIX),.)
.git/refs/remotes/makefile:
	git remote add -f makefile https://github.com/remerge/makefile

$(MKF_COMMON): .git/refs/remotes/makefile
	git fetch -a -p makefile
	git subtree add --squash --prefix $(MKF_COMMON) makefile main

.PHONY: add
mkf-add: ## add new makefile framework module
mkf-add: $(MKF_COMMON)
	git remote add $(notdir $(MODULE)) https://github.com/$(MODULE)
	git subtree add --squash --prefix $(MKF_PREFIX)/$(patsubst %-makefile,%,$(notdir $(MODULE))) $(notdir $(MODULE)) main

.PHONY: mkf-update
mkf-update: ## update makefile framework modules
mkf-update: $(MKF_COMMON)
	@for m in $(MKF_PREFIX)/*; do \
		if [[ "$$(basename $${m})" == "common" ]]; then \
			git subtree pull --squash --prefix $${m} makefile main; \
		else \
			git subtree pull --squash --prefix $${m} $${m}-makefile main; \
		fi \
	done
update:: mkf-update
endif
