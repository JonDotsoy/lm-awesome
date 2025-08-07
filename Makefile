.PHONY: all
all: fmt

.PHONY: dep-bun
dep-bun:
	@if ! command -v bun >/dev/null 2>&1; then \
		echo "Error: bun command not found. Please install bun."; \
		exit 1; \
	fi

.PHONY: fmt
fmt: dep-bun
	bun x prettier --write .
