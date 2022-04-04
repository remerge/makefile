.PHONY: git-reset
git-reset: ## cleanup and reset repository to remote state
ifeq ($(FORCE),y)
	git reset --hard @{upstream}
	git clean -fdx
else
	@echo "Would execute \`git reset --hard @{upstream}'"
	@git clean -ndx
endif
reset:: git-reset
