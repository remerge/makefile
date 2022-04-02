.PHONY: gen
gen: ## alias for generate
gen: generate

.PHONY: generate
generate:: ## generate documentation, schemas, etc
	@:

.PHONY: fmt
fmt: ## alias for format
fmt: format

SH_FILES = $(shell $(SHFMT) -f $(CURDIR))

.PHONY: format
format:: ## format source code to conform to coding style and best practices
	$(SHFMT) $(SHFMT_ARGS) -w $(SH_FILES)
