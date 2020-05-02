#!/bin/bash

echo 'move to folder'
cd ./ansible_config

echo 'run playbook'
ansible-playbook basic-provision.yml \
                 -e working_host=167.99.127.218 \
                 -e 'ansible_python_interpreter=/usr/bin/python3'

                #  --key-file ../id_rsa \


# To pass host IP with CLI command, 
# ref: https://stackoverflow.com/a/49790233/198660
