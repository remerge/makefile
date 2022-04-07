.PHONY: pre-commit-clean
pre-commit-clean: ## remove pre-commit cached repositories
	pre-commit uninstall
	pre-commit clean
clean:: pre-commit-clean

.markdownlint.yaml:
	cp $(MKF_COMMON)/.markdownlint.yaml $@

.pre-commit-config.yaml: .markdownlint.yaml
	cp $(MKF_COMMON)/.pre-commit-config.yaml $@

.git/hooks/pre-commit: .pre-commit-config.yaml
	pre-commit install

.PHONY: pre-commit-update
pre-commit-update: ## update pre-commit hook and modules
pre-commit-update: .git/hooks/pre-commit
	pre-commit autoupdate
update:: pre-commit-update

.PHONY: pre-commit-check
pre-commit-check: ## run pre commit hooks
pre-commit-check: .git/hooks/pre-commit
	pre-commit run --all-files
check:: pre-commit-check
