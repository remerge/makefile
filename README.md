# Makefile Framework

Makefile framework for all remerge projects.

## Getting Started

For a new project that does not use the Makefile framework yet, add this
repository as a subtree and create the initial Makefile and setup your
environment:

```bash
git remote add makefile https://github.com/remerge/makefile
git subtree add --squash --prefix mkf/common makefile main

echo 'include mkf/common/common.mk' > Makefile
git add Makefile
git commit -m 'add Makefile'

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
