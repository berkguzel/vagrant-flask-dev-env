# vagrant-flask-dev-env

Created a development environment by using Vagrant. 
1. Vagrant is creating a VM on Virtual Box, `hashicorp/bionic64` is the base image of the VM. 
2. It's installing docker for us and pulling images I specified.
3. There will be two containers. First one is our Flask app, second one is an app to observing docker hub in every 40 seconds. 
4. If there is new image on docker hub, flask app is restarting with new image. 
-------------
Solved CI/CD part with Github Actions.
1. When the repo received new commit, new image is building in actions.
2. Tests are running while image is building
3. Pushing new image to docker hub

-----

Solved VM configuration with ansible

1. Ansible is installing Vim, Git, Python and Pip.
2. Clonning our app inside the VM.