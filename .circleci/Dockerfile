# ubuntu-ansible-toolbox

# How to build and deploy:
# 
# 1. Navigate into this folder
# 2. Run `docker build --tag abrahamvarricatt/ubuntu-ansible-toolbox .`
# 3. Upload to dockerhub via,
#    `docker push abrahamvarricatt/ubuntu-ansible-toolbox`

FROM ubuntu:bionic-20200403

RUN apt-get update
RUN apt-get install -y \
    ansible \ 
    git \
    python3

# Explanation
# ansible = the provisioning tool we are using
# git = to be able to clone this repository on circleci
# python3 = python runtime we'll use for provisioning and on the remote droplet
