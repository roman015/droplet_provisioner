#!/bin/bash

echo 'move to folder'
cd ./ansible_config

echo 'run playbook'
ansible-playbook basic-provision.yml \
                 -e working_host=165.227.125.212 \
                 -e 'ansible_python_interpreter=/usr/bin/python3'
