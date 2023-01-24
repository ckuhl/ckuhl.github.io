docs/main.html: src/  ## Build site, default target
	raco pollen publish ./src ./docs

.PHONY: local-workflow help

local-workflow:  ## Run GitHub Actions locally
	act --container-architecture linux/amd64

help:  ## Print this help message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
