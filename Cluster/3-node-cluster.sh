#!/bin/bash 

kops create cluster --name=jashwanthdevops.live \
--state=s3://jashwanthdevops.live --zones=us-east-1a,us-east-1b \
--node-count=2 --master-count=1 --node-size=t3.medium --master-size=t3.medium \
--master-zones=us-east-1a --master-volume-size 10 --node-volume-size 10 \
--ssh-public-key ~/.ssh/id_rsa.pub \
--dns-zone=jashwanthdevops.live --yes

