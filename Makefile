docs/main.html: src/
	raco pollen publish ./src ./docs

.PHONY: local-workflow

local-workflow:
	act --container-architecture linux/amd64
