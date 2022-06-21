# Makefile

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
