#!/bin/bash

CENTOS_MAJOR_VERSION=$(rpm --eval %{centos_ver})
echo "CentOS major version ${CENTOS_MAJOR_VERSION}"

if [[ $CENTOS_MAJOR_VERSION == "8" ]]
then
    echo "centos8"
    sudo yum install -y python2-pip
    sudo pip2 install --upgrade pip
    sudo pip2 install ansible==2.9.7
elif [[ $CENTOS_MAJOR_VERSION == "7" ]]
then
    echo "centos7"
    sudo yum install -y epel-release
    sudo yum install -y python-pip
    sudo pip install --upgrade pip
    sudo pip install ansible==2.9.7
else
echo "Not a valid centos version"
exit 1
fi
