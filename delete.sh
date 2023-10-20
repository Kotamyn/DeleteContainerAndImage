#!/bin/bash

if [ -n "$1" ]
then
      CONTAINER=$(docker ps -aqf "ancestor=${$1}")
      IMAGE=$(docker images | grep ${$1} | awk '{ print $3}')
      docker stop $CONTAINER && docker rm $CONTAINER
      docker rmi $IMAGE
else
      echo "No parameters found. "
fi
