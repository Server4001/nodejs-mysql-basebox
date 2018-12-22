#!/bin/bash

if [ ! -f /etc/yum.repos.d/epel.repo ]; then
  # Install the EPEL repo.
  yum install -y epel-release
fi

if [ ! -f /usr/bin/sshpass ]; then
  # Install ansible pre-reqs.
  yum install -y python-crypto2.6 \
    python-httplib2 \
    python-jinja2-26 \
    python-keyczar \
    python-markupsafe \
    python-pyasn1 \
    python-simplejson \
    PyYAML \
    libyaml \
    python-paramiko \
    python-setuptools \
    python-six \
    sshpass
fi

if [ ! -e /usr/bin/ansible ]; then
  rpm -Uvh /vagrant/provisioners/rpms/ansible-2.6.7-1.el6.noarch.rpm
fi
