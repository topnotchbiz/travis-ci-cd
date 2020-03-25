#!/bin/sh
a=10
b=20

if [ $a == $b ]
then
   echo "a is equal to b"
else
   echo "a is not equal to b"
fi
#if [ "${DOCKER_USER}" == "topnotchbiz" ]
#then
#    echo "yes"
#else
#    echo "no"
#fi
#docker login --username ${DOCKER_USER} --password ${DOCKER_PASS}
#docker build -f Dockerfile -t ${TRAVIS_REPO_SLUG}:latest .
#docker tag ${TRAVIS_REPO_SLUG}:latest ${DOCKER_REPO}:latest
#docker push ${DOCKER_REPO}:latest