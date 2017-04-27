#!/bin/bash
if [ -z "$(which mongo)" ]; then
     echo "Please install mongo with homebrew mongo" 
     exit -1;
fi

mongo $(docker-machine ip):27017 < load.js
