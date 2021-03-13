#! /bin/bash
# We need git and ansible to run our installation process
sudo apt-get update
sudo apt-get install ansible -y
sudo apt-get install git -y
sudo rm /tmp/ubuntu-install.yml*
wget https://raw.githubusercontent.com/Dugelon/ubuntu-install-baseline/master/ubuntu-install.yml -P /tmp/
sudo ansible-playbook /tmp/ubuntu-install.yml 
