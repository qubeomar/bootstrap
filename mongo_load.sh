#!/bin/bash
if [ -z "$(which mongo)" ]; then
     echo "Please install mongo with homebrew mongo" 
     exit -1;
fi
sed -ibak 's/150e18f6-0165-34ad-ad30-8577b03eadb4/39928fd4-b86a-36bf-8a06-20932b88ba81/g' load.js
mongo $(docker-machine ip):27017 < load.js
