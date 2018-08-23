#!/bin/bash

docker build -t aula03-app ../../.

az login -u $usuario -p $senha

az container create -g $resource --name aula03-app --image aula03-app:latest --ip-address public