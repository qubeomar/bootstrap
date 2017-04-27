#!/bin/bash

components=$1
shift
services=$@
set -e -x
if [ -z $components ]; then
	components="base"
fi

./login.sh
base_command="docker-compose"
options="up -d --remove-orphans"
files="-f docker-compose.yaml"
$base_command $files $options $services
