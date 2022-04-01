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

## Updating Modules

To update the Makefile framework in the current repository:

```bash
make mkf-update
```

## Available Makefile Targets

| Name      | File           | Description                                                                                  |
| --------- | -------------- | -------------------------------------------------------------------------------------------- |
| help      | help.mk:7      | display this help text                                                                       |
| clean     | prepare.mk:2   | remove all build artifacts generated by `make all`                                           |
| distclean | prepare.mk:6   | remove all artifacts, caches, dependencies, settings and reset branch to remote (DANGEROUS!) |
| dep       | prepare.mk:19  | alias for install                                                                            |
| install   | prepare.mk:23  | prepare environment and install dependencies for all make targets                            |
| up        | prepare.mk:33  | alias for update                                                                             |
| update    | prepare.mk:37  | update environment and all dependencies to their latest version(s)                           |
| gen       | generate.mk:5  | alias for generate                                                                           |
| generate  | generate.mk:9  | generate documentation, schemas, etc                                                         |
| fmt       | generate.mk:13 | alias for format                                                                             |
| format    | generate.mk:17 | format source code to conform to coding style and best practices                             |
| lint      | test.mk:1      | run code format check, code analysis, security scans, etc                                    |
| test      | test.mk:2      | run unit and integration tests                                                               |
| build     | build.mk:2     | run all build steps and create artifact(s)                                                   |
