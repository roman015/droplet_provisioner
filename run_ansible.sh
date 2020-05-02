#!/bin/bash

echo 'move to folder'
cd ./ansible_config

echo 'run playbook'
ansible-playbook basic-provision.yml \
                #  --key-file ../id_rsa \
                 -e working_host=165.227.125.212 \
                 -e 'ansible_python_interpreter=/usr/bin/python3'

# To pass host IP with CLI command, 
# ref: https://stackoverflow.com/a/49790233/198660
