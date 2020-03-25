#!/bin/sh
if [ "${DOCKER_USER}" == "topnotchbiz" ]; then
    echo ${DOCKER_USER}
else
    echo ${DOCKER_PASS}
 fi
#docker login --username ${DOCKER_USER} --password ${DOCKER_PASS}
#docker build -f Dockerfile -t ${TRAVIS_REPO_SLUG}:latest .
#docker tag ${TRAVIS_REPO_SLUG}:latest ${DOCKER_REPO}:latest
#docker push ${DOCKER_REPO}:latest