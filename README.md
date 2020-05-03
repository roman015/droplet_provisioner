[![abrahamvarricatt](https://circleci.com/gh/abrahamvarricatt/droplet_provisioner.svg?style=shield)](https://app.circleci.com/pipelines/github/abrahamvarricatt/droplet_provisioner)

# droplet_provisioner

What does this project do?

It consists of 3 sub-projects,

* ansible deployment scripts
* a dotNet webapp (connected to a MySQL database)
* a dotNet worker

When an update is made to this repository (for example, to update one of the 
dotNet projects), circleci will run the ansible scripts to deploy both 
applications to a single digital ocean droplet. 





# Creating SSH key pairs

You can run the following command to create an SSH key-pair at the root of the 
project folder,

```
$ ssh-keygen -m PEM -t rsa -C "your_email@example.com" -N '' -f ./id_rsa
```

# Adding the keys to Digital Ocean

Login to DO, navigate to the security page and add the public key to your 
account. You can name the key with a familar name like 'droplet-provisioner'.

# Creating a droplet with the SSH key

You can now create a new droplet (I like to enable monitoring) with the SSH key.
It should be under 'Authentication'. The web interface should say what the IP
of the droplet will be. 

DROPLET_IP = 159.65.244.208

# Manual connection

To connect to the remote host manually you can run,

```
$ ssh -i id_rsa root@159.65.244.208
```


# To confirm worker is ... working;

```
$ journalctl -u worker.service -f
```

