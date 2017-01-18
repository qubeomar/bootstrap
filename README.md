# bootstrap

# Basic

## install bootstrap  
curl -sSL https://github.com/Qubeship/bootstrap/blob/master/bootstrap.sh | sh  
or:  
wget -qO- https://github.com/Qubeship/bootstrap/blob/master/bootstrap.sh | sh

## Add the following lines to .bashrc or .bash_profile and replace the values with your own ones:
export ENV_ID=YOUR_ID  
export CONF_SERVER_TOKEN=xyz-1234-abcd-xyz  
export VAULT_TOKEN=xyz-1234-abcd-xyz  

## run the base platform  
./run.sh

You are done starting the API and app modules.

====

# Advanced

To run the platform fully, (including jenkins)

## run ngrok
./run_ngrok.sh   

## run everything  
./run.sh all
