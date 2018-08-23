#!/bin/bash

docker build -t degree-converter-api ../../.

az login -u $username -p $password

az container create -g $resource --name degree-converter-api --image degree-converter-api:latest --ip-address public