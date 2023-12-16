#!/usr/bin/env bash

getInitialAdminPassword(){
    docker-compose exec -it jenkins bash -c "cat /var/jenkins_home/secrets/initialAdminPassword"
}

getInitialAdminPassword