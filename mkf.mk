.git/refs/remotes/makefile:
	git remote add -f makefile https://github.com/remerge/makefile

$(MKF_COMMON): .git/refs/remotes/makefile
	git fetch -a -p makefile
	git subtree pull --squash --prefix $(MKF_COMMON) makefile main

mkf-name = $(patsubst %-makefile,%,$(notdir $(1)))

.PHONY: mkf-add
mkf-add: ## add makefile framework module
mkf-add: $(MKF_COMMON)
	git remote add $(notdir $(MODULE)) https://github.com/$(MODULE)
	git subtree add --squash --prefix $(MKF_PREFIX)/$(patsubst %-makefile,%,$(notdir $(MODULE))) $(notdir $(MODULE)) main

update:: ## update all makefile framework modules
update:: $(MKF_COMMON)
	@for m in $(MKF_PREFIX)/*; do \
		if [[ "$$(basename $${m})" == "common" ]]; then \
			echo git subtree pull --squash --prefix $${m} makefile main; \
		else \
			echo git subtree pull --squash --prefix $${m} $${m}-makefile main; \
		fi \
	done
