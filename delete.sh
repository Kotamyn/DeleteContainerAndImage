#!/bin/bash

input_images=$1
if [ -n "$input_images" ]
then
      CONTAINER=$(docker ps -aqf "ancestor=${input_images}")
      IMAGE=$(docker images | grep ${input_images} | awk '{ print $3}')
      docker stop $CONTAINER && docker rm $CONTAINER
      docker rmi $IMAGE
else
      echo "No parameters found. "
fi
