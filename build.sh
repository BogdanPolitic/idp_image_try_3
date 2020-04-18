#!/bin/sh

git pull
docker build -t testapp_img .
docker tag testapp_img bogdanpolitic/idp:try_17_04
docker push bogdanpolitic/idp:try_17_04
docker stack rm testapp
docker stack deploy -c docker-compose-visualize.yml testapp
