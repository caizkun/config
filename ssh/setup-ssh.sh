#!/bin/bash

USER=$1
HOST=$2

if [ "$#" -ne 2 ]; then
    echo "Usage: `basename $0` USERNAME HOSTNAME" >&2
    exit 1
fi

# generate ssh keys locally at ~/.ssh/id_rsa*
ssh-keygen -t rsa

# copy the pubic key to remote server ~/.ssh/authorized_keys
printf "\ncoping public key to remote: $USER@$HOST\n"
ssh-copy-id $USER@$HOST

printf "You are all set! :P\n"
