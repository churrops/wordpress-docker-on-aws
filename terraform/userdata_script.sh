#!/bin/sh
sudo yum update -y
sudo yum install wget docker -y
sudo service docker start; sudo chkconfig docker on
sudo curl -L https://github.com/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` -o /usr/sbin/docker-compose
sudo chmod +x /usr/sbin/docker-compose
sudo wget https://raw.githubusercontent.com/churrops/wordpress-docker-on-aws/master/docker/docker-compose.yml
sudo docker-compose up -d