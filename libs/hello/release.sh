#!/usr/bin/env bash

VERSION="v0.0.3"
TAG="libs/hello/${VERSION}"
#ARCHIVE="hello-${VERSION}.tar.gz"

#git archive --format=tar.gz --prefix="hello-${VERSION}"/ HEAD > "${ARCHIVE}"

git tag "${TAG}"
git push origin "${TAG}"

#gh release create "hello/${VERSION}" \
#  --title "hello-${VERSION}" \
#  --notes "Hello" \
#  "${ARCHIVE}"
