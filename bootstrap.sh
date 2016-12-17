#!/bin/bash

# gcr.io login
gcloud auth login
gcloud auth list
docker login -e $(gcloud auth list | grep ACTIVE | grep qubeship.io | awk '{print $2}')  -u _token -p "$(gcloud auth print-access-token)" https://gcr.io

# docker-compose install
if [ ! -f /usr/local/bin/docker-compose ]; then
  curl -L "https://github.com/docker/compose/releases/download/1.9.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
  chmod +x /usr/local/bin/docker-compose
  docker-compose --version
fi
