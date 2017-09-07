# Geladinha Resources

There resources represents geladinha domain.

## Dependencies

- Docker

_You can also have protobuf and their needed plugins in your machine, although it's no recommended_.

## Usage

Mainly, you should be able to build resources and docs for any supported technology.

### Build docs

Once you have docker installed in your machine you can take advantage of our `make` tasks:

```sh
# Build Markdown and HTML format docs into `doc` folder
make docs/all

# Clean `doc` folder
make docs/clean
```

## Release

There are two simple tasks that to release and publish a new version of resources. It's important to always
release changes in order to make client able to updated their resources:

```sh
# Add git tag, you can pass a custom `version` via env var, if none is passed it will increment a patch level
# of the latest version
make release

# or

version=v0.4.0 make release

# Push git tag. It pushes new tag to github and notify slack's channel
make release/publish
```