# kaniko-debugging

## Build the images
Adjust at least the image tags to your needs:
- Kaniko: `docker run -v "${HOME}/.docker:/kaniko/.docker" -v "${PWD}":/workspace gcr.io/kaniko-project/executor:latest --dockerfile "Dockerfile" --destination "my-registry/image:tag" --context dir:///workspace/`
- Docker: `docker build . -t my-registry/image:tag`
