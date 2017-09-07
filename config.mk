project_name = geladinha_resources
project_dir = $(shell pwd)
docs_dir = docs

protoc_cmd = docker run \
	     -v $(project_dir):/$(project_name) \
	     -w /$(project_name) \
	     --rm brennovich/protobuf-tools:1.2.0
