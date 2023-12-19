#!/usr/bin/env bash

getInitialRootPassword(){
    docker-compose exec -it gitlab grep 'Password:' /etc/gitlab/initial_root_password
}

getInitialRootPassword