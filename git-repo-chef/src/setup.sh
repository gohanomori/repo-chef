#!/bin/bash
yum update -y
yum install -y ruby ruby-devel rubygems make gcc
gem install chef
mkdir /home/ec2-user/cookbooks
chown -R ec2-user:ec2-user /home/ec2-user/cookbooks
mkdir -p /etc/chef
chmod 666 /etc/chef
echo 'cookbook_path ["/home/ec2-user/chef-repo/cookbooks"]' > /etc/chef/solo.rb
