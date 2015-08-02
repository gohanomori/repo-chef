#!/bin/bash
yum update -y
yum install -y ruby ruby-devel rubygems make gcc
gem install chef
mkdir -p /home/ec2-user/cookbooks
chown -R ec2-user:ec2-user /home/ec2-user/cookbooks