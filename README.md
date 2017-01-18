# bootstrap
docker-compose for starting all Qubeship components

# Steps

### Install bootstrap
```
curl -sSL https://github.com/Qubeship/bootstrap/blob/master/bootstrap.sh | sh
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
