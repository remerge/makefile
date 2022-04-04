MKF_PREFIX = .
MKF_COMMON = .

include common.mk

all: ## run make generate check test build
all: generate check test build
