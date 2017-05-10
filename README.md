# bootstrap
docker-compose for starting all Qubeship components

----

# Steps

### Install bootstrap
```
curl -sSL https://github.com/Qubeship/bootstrap/blob/master/bootstrap.sh | sh
# or
wget -qO- https://github.com/Qubeship/bootstrap/blob/master/bootstrap.sh | sh
```

### Add the following lines to .bashrc or .bash_profile and replace the values with your own ones:
```
export ENV_ID=YOUR_ID
export CONF_SERVER_TOKEN=xyz-1234-abcd-xyz
export VAULT_TOKEN=xyz-1234-abcd-xyz
```

### Run
```
./run.sh all # to run everything including jenkins
./run.sh     # to run API and app modules only
```

### Run ngrok 
In case of `./run.sh all`,
```
./run_ngrok.sh
```

----

# Troubleshooting

### Container(s) failed to start due to the inefficient disk space
```
docker volume rm `docker volume ls -q -f dangling=true`
```
----
# Deploying services 

1. Bring down running Qubeship if one is running from previous Bootstrap execution

  ./down.sh
 
 Docker container pertaining to Qubeship should all have stopped and removed.
 
2. Remove docker image of the service you want to replace

  docker rmi <imageid>

3. Configure the .env file

- Make a backup of this file in case you would like to revert back to the community container images.

Update the image repository of the image you want to replace

- Go to the  section under "# images" and to the line that starts with "<service>_IMAGE" where <service> is the name of the service whose image is to be replaced

- Go to the section under "# version" and tot he line stat starts with "<service>_VERSION" where <service> is the name of the service whose image is to be replaced

Save the changes.

4. Using the command line, login your docker repository 

5. Run bootstrap.sh

If everything is OK, the service from the new image should be executing in the Qubehship enviornment started by Bootstrap

