#!/bin/bash
docker rm -f qubeship_ngrok

export $(cat .env | grep GIT_LISTENER_PORT)
docker run -it -d --name qubeship_ngrok -p 4040:4040 -e TARGET_HOST=192.168.99.100 -e TARGET_PORT=$GIT_LISTENER_PORT gtriggiano/ngrok-tunnel
