#!/bin/sh

echo "Usage: "
echo "  network.sh <Mode> [Flags]"
echo "    <Mode>"
echo "      - 'up' - bring up fabric orderer and peer nodes. No channel is created"
echo "      - 'up createChannel' - bring up fabric network with one channel"
echo "      - 'createChannel' - create and join a channel after the network is created"
echo "      - 'deployCC' - deploy the fabcar chaincode on the channel"
echo "      - 'down' - clear the network with docker-compose down"
echo "      - 'restart' - restart the network"
echo
echo "    Flags:"
echo "    -ca <use CAs> -  create Certificate Authorities to generate the crypto material"
echo "    -c <channel name> - channel name to use (defaults to \"mychannel\")"
echo "    -s <dbtype> - the database backend to use: goleveldb (default) or couchdb"
echo "    -r <max retry> - CLI times out after certain number of attempts (defaults to 5)"
echo "    -d <delay> - delay duration in seconds (defaults to 3)"
echo "    -l <language> - the programming language of the chaincode to deploy: go (default), javascript, or java"
echo "    -v <version>  - chaincode version. Must be a round number, 1, 2, 3, etc"
echo "    -i <imagetag> - the tag to be used to launch the network (defaults to \"latest\")"
echo "    -verbose - verbose mode"
echo "  network.sh -h (print this message)"
echo
echo " Possible Mode and flags"
echo "  network.sh up -ca -c -r -d -s -i -verbose"
echo "  network.sh up createChannel -ca -c -r -d -s -i -verbose"
echo "  network.sh createChannel -c -r -d -verbose"
echo "  network.sh deployCC -l -v -r -d -verbose"
echo
echo " Taking all defaults:"
echo "	network.sh up"
echo
echo " Examples:"
echo "  network.sh up createChannel -ca -c mychannel -s couchdb -i 2.0.0"
echo "  network.sh createChannel -c channelName"
echo "  network.sh deployCC -l javascript"

#docker login --username ${DOCKER_USER} --password ${DOCKER_PASS}
#docker build -f Dockerfile -t ${TRAVIS_REPO_SLUG}:latest .
#docker tag ${TRAVIS_REPO_SLUG}:latest ${DOCKER_REPO}:latest
#docker push ${DOCKER_REPO}:latest
