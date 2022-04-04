.PHONY: pre-commit-clean
pre-commit-clean: ## remove pre-commit cached repositories
	pre-commit uninstall
	pre-commit clean
clean:: pre-commit-clean

.PHONY: pre-commit-install
pre-commit-install: ## install pre-commit hook and modules
pre-commit-install:
	pre-commit install -f --install-hooks
install:: pre-commit-install

.PHONY: pre-commit-update
pre-commit-update: ## update pre-commit hook and modules
	pre-commit autoupdate
	pre-commit install -f --install-hooks
update:: pre-commit-update

.PHONY: pre-commit-check
pre-commit-check: ## run pre commit hooks
	pre-commit run --all-files
check:: pre-commit-check
