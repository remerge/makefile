.PHONY: clean distclean install update

clean:: ## remove all build artifacts generated by `make all`

distclean:: ## remove all artifacts, caches, dependencies, settings and reset branch to remote (DANGEROUS!)
ifeq ($(FORCE),)
	$(call log,notice,">>> distclean would execute:")
	$(call log,info,  "    git reset --hard @{upstream}")
	$(call log,info,  "    git clean -fdx")
	$(call log,notice,">>> use make distclean FORCE=y to execute")
	@true
else
	git reset --hard @{upstream}
	git clean -fdx
endif

install:: ## prepare environment and install dependencies for all make targets
update:: ## update environment and all dependencies to their latest version(s)
