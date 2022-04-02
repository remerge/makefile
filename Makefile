MKF_PREFIX = .
MKF_COMMON = .

include common.mk

all: ## alias for `make generate format lint test build`
all: generate format lint test build
