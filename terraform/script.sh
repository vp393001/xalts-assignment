#!/bin/bash
sudo yum update -y
sudo yum install docker -y
sudo systemctl start docker
docker run -d -p 80:3000 vp393001/xalts
