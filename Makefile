SRC_DIR := .
SHELL_SCRIPTS := $(wildcard $(SRC_DIR)/*.sh)

run:
	./tools/run.sh

test:
	./tools/test.sh

.PHONY: run
.PHONY: test
