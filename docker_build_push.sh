#!/bin/bash

for arch in "arm64" "amd64" ; do
    docker buildx build . -f Dockerfile.release --push -t code2io/minio-s3fs:latest -t code2io/minio-s3fs:RELEASE.2024-12-18T13-15-44Z.10.$arch  --platform linux/$arch --build-arg TARGETARCH=$arch --build-arg RELEASE=RELEASE.2024-12-18T13-15-44Z
done
