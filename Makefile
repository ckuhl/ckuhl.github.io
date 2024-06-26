.DEFAULT_GOAL=help

docs: src/  ## Build static content, write it into `./docs`
	raco pollen render --recursive ./src
	raco pollen publish ./src ./docs

.PHONY: clean dev local-workflow help

clean:  ## Remove rendered HTML files
	rm -rf build
	rm -rf docs
	rm -rf src/**/*.html
	rm -rf src/**/*.xml
	rm -rf src/compiled
	rm -rf src/**/compiled
	rm -rf **/*_pm.zo
	rm -rf **/*.*~

dev:  ## Local development site
	cd src/ && raco pollen start

local-workflow:  ## Run GitHub Actions locally
	act --container-architecture linux/amd64

setup:  ## Install necessary dependencies
	raco pkg install --auto pollen

help:  ## Print this help message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
