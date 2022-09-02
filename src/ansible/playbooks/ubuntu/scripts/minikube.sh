#!/bin/bash

curl -sL https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 -o minikube

chmod +x minikube
mv minikube /usr/local/bin/
