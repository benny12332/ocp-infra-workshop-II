#!/bin/bash
# binding
if [ $# -ne 1 ]
then
    echo "Please input arguments! "
    echo "./build-image.sh <tag> "
    exit
fi
podman build --tag nginx:1.1 .
