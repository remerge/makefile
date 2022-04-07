# Makefile Framework

Makefile framework for all remerge projects.

## Getting Started

For a new project that does not use the Makefile framework yet, add this
repository as a subtree:

```bash
git remote add makefile https://github.com/remerge/makefile
git subtree add --squash --prefix mkf/common makefile main
```

Afterwards create the initial Makefile and setup your environment:

```bash
echo 'include mkf/common/common.mk' > Makefile
make update generate check
```

## Adding Modules

Use `make add` to add modules to the Makefile framework for the current project:

```bash
$ make mkf-add MODULE=remerge/example-makefile
git remote add example-makefile https://github.com/remerge/example-makefile
git subtree add --squash --prefix mkf/example example-makefile main
git fetch example-makefile main
From ssh://github.com/remerge/example-makefile
* branch main - > FETCH_HEAD
* [new branch] main - > example-makefile/main
Added dir 'mkf/example'
```

## Updating Modules

Use `make mkf-update` to update all modules from the Makefile framework:

```bash
make mkf-update
```

## Available Makefile Targets

| Name              | File          | Description                                         |
| ----------------- | ------------- | --------------------------------------------------- |
| clean             | common.mk     | remove build artifacts and caches                   |
| reset             | common.mk     | reset repository to remote state                    |
| install           | common.mk     | prepare environment and install dependencies        |
| update            | common.mk     | update environment and dependencies                 |
| generate          | common.mk     | generate documentation, configuration, schemas, etc |
| check             | common.mk     | run pre commit formatters and linters               |
| test              | common.mk     | run unit and integration test cases                 |
| build             | common.mk     | run build steps and create artifact                 |
| git-reset         | git.mk        | cleanup and reset repository to remote state        |
| mkf-add           | mkf.mk        | add new makefile framework module                   |
| mkf-update        | mkf.mk        | update makefile framework modules                   |
| pre-commit-clean  | pre-commit.mk | remove pre-commit cached repositories               |
| pre-commit-update | pre-commit.mk | update pre-commit hook and modules                  |
| pre-commit-check  | pre-commit.mk | run pre commit hooks                                |
