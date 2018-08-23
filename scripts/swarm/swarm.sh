#!/bin/bash

docker swarm init

token=$(docker swarm join-token -q worker) && echo $token

docker swarm join --token $token

docker network create -d overlay pucnet

docker build -t degree-converter-api ../../.

docker service create --name degree-converter-api --network pucnet --replicas 2 -p 80:80 degree-converter-api:latest

# Apenas para escalar a API para 5 containers espalhados entre os 2 nós
docker service scale http=5