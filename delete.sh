#!/bin/bash

echo '↓ Enter name image ↓'
read image

CONTAINER=$(docker ps -aqf "ancestor=${image}")
IMAGE=$(docker images | grep ${image} | awk '{ print $3}')

docker stop $CONTAINER && docker rm $CONTAINER
docker rmi $IMAGE
