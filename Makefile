include config.mk

.PHONY: \
	docs/all \
	docs/clean \
	release \
	release/publish

docs/all: docs/clean docs/index.html docs/index.markdown

docs/index.%: *.proto
	$(eval format := $(subst .,,$(suffix $@)))

	$(protoc_cmd) protoc --doc_out=$(format),$(notdir $@):$(docs_dir) *.proto

docs/clean:
	- rm docs/*

current_version = $(shell git describe --tags --abbrev=0)
version ?= $(shell ./bin/increment_version.sh -p $(current_version))

release:
	- git fetch --tags
	- git tag $(version)

release/publish: release
	- git push --tags