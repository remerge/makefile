# Makefile Framework

Makefile framework for all remerge projects.

## Getting Started

For a new project that does not use the Makefile framework yet, add this
repository as a subtree:

```bash
git remote add makefile https://github.com/remerge/makefile
git subtree add --squash --prefix mkf/common makefile main
```

Afterwards make targets can be included in the project:

```bash
$ cat Makefile
include mkf/common/common.mk
```

## Adding Modules

Use `make add` to add modules to the Makefile framework for the current project:

```bash
$ make add MODULE=remerge/example-makefile
git remote add example-makefile https://github.com/remerge/example-makefile
git subtree add --squash --prefix mkf/example example-makefile main
git fetch example-makefile main
From ssh://github.com/remerge/example-makefile
* branch main - > FETCH_HEAD
* [new branch] main - > example-makefile/main
Added dir 'mkf/example'
```

## Updating Modules

Use `make update` to update all modules from the Makefile framework:

```bash
make update
```

## Available Makefile Targets

| Name               | File          | Description                                         |
| ------------------ | ------------- | --------------------------------------------------- |
| all                | Makefile      | run make generate check test build                  |
| clean              | common.mk     | remove build artifacts and caches                   |
| reset              | common.mk     | reset repository to remote state                    |
| install            | common.mk     | prepare environment and install dependencies        |
| update             | common.mk     | update environment and dependencies                 |
| generate           | common.mk     | generate documentation, configuration, schemas, etc |
| check              | common.mk     | run pre commit formatters and linters               |
| test               | common.mk     | run unit and integration test cases                 |
| build              | common.mk     | run build steps and create artifact                 |
| git-reset          | git.mk        | cleanup and reset repository to remote state        |
| mkf-add            | mkf.mk        | add new makefile framework module                   |
| mkf-update         | mkf.mk        | update makefile framework modules                   |
| pre-commit-clean   | pre-commit.mk | remove pre-commit cached repositories               |
| pre-commit-install | pre-commit.mk | install pre-commit hook and modules                 |
| pre-commit-update  | pre-commit.mk | update pre-commit hook and modules                  |
| pre-commit-check   | pre-commit.mk | run pre commit hooks                                |
