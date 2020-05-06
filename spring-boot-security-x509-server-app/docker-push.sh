#!/bin/bash


#read -p "Docker username: " docker_user
#read -s -p "Docker password: " docker_psw

#echo "$docker_psw" | docker login --username "$docker_user" --password-stdin

docker login -u de-test@byton-test -p byton2020 registry.cn-shanghai.aliyuncs.com

#image_tag=(`cat gradle.properties | grep "cas.version" | cut -d= -f2`)
image_tag="dev"
docker push registry.cn-shanghai.aliyuncs.com/byton-k8s-test/x509serv:"$image_tag" \
	&& echo "Pushed registry.cn-shanghai.aliyuncs.com/byton-k8s-test/x509serv:$image_tag successfully.";