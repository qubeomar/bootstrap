#!/bin/bash
mongo_pod=$(kubectl get pods --namespace platform | grep mongo | awk '{print $1}')
kubectl exec -it $(kubectl get pods --namespace platform | grep mongo | awk '{print $1}') --namespace platform mongo  < query_mongo.js | tail -n +4 | grep -v "switched to db" | egrep -v "^>|^bye"   > load.js
