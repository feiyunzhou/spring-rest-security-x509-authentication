#!/bin/bash

#image_tag=(`cat gradle.properties | grep "cas.version" | cut -d= -f2`)

image_tag="dev"
echo "Building x509serv docker image tagged as [$image_tag]"
# read -p "Press [Enter] to continue..." any_key;

docker build --tag="registry.cn-shanghai.aliyuncs.com/byton-k8s-test/x509serv:$image_tag" . \
  && echo "Built x509serv image successfully tagged as registry.cn-shanghai.aliyuncs.com/byton-k8s-test/x509serv:$image_tag" \
  && docker images "registry.cn-shanghai.aliyuncs.com/byton-k8s-test/x509serv:$image_tag"