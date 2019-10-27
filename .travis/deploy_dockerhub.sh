#!/bin/sh
docker login --username ${DOCKER_USER} --password ${DOCKER_PASS}
TAG="${TRAVIS_TAG}"
docker build -f Dockerfile -t ${TRAVIS_REPO_SLUG}:${TAG} -t ${TRAVIS_REPO_SLUG}:latest .
docker tag ${TRAVIS_REPO_SLUG} ${DOCKER_REPO}
docker push ${DOCKER_REPO}