#!/bin/bash
# this file runs first, so during an initail installation error might happen

# simply stop the docker container
echo stopping server
docker stop react-app-server
echo removing server
docker rm react-app-server
echo server stopped
exit