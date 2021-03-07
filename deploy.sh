#!/bin/bash

#eval $(minikube docker-env)

#kubectl.exe create secret generic mysql-secret --from-literal='username=root' --from-literal='password=password' --from-literal='root-password=password'

kubectl.exe apply -f kubernetes
