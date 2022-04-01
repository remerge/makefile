PRETTIER = $(call need-command,prettier)
SPONGE = $(call need-command,sponge)

.PHONY: gen
gen: ## alias for generate
gen: generate

.PHONY: generate
generate:: ## generate documentation, schemas, etc
	@:

.PHONY: fmt
fmt: ## alias for format
fmt: format

.PHONY: format
format:: ## format source code to conform to coding style and best practices
	@:

.PHONY: build
build:: ## run all build steps and create artifact(s)
	@:
