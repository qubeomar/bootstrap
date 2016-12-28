# bootstrap

## Add the following lines to .bashrc or .bash_profile and replace the values with your own ones:
export ENV_ID=YOUR_ID  
export CONF_SERVER_TOKEN=xyz-1234-abcd-xyz  
export VAULT_TOKEN=xyz-1234-abcd-xyz  

docker-compose up


## Commands:
curl -sSL https://github.com/Qubeship/bootstrap/blob/master/bootstrap.sh | sh  
or:  
wget -qO- https://github.com/Qubeship/bootstrap/blob/master/bootstrap.sh | sh
