#!/bin/bash -xe

# update
sudo apt-get update -y

# zip
sudo apt-get install -y zip

# nodejs and npm
sudo apt-get install -y nodejs
sudo apt-get install -y npm

sleep 60

# Java
sudo apt-get install -y fontconfig openjdk-17-jre

# Jenkins
wget -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update -y
sudo apt-get install -y jenkins
sudo touch /var/lib/jenkins/jenkins.install.InstallUtil.lastExecVersion
sudo systemctl restart jenkins
