.DEFAULT_GOAL := help

docs/: src/  ## Build site, default target
	raco pollen render --recursive ./src
	raco pollen publish ./src ./docs

.PHONY: clean local-workflow help

clean:  ## Remove rendered HTML files
	rm -rf ./build
	rm -rf ./docs
	rm ./src/**/*.html
	rm -rf ./src/**/compiled

dev:  ## Local development site
	cd src/ && raco pollen start

local-workflow:  ## Run GitHub Actions locally
	act --container-architecture linux/amd64

help:  ## Print this help message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
