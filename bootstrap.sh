!/usr/bin/env bash

apt-get update
apt-get install -y vim net-tools apt-utils apt-transport-https curl procps perl-modules openssh-server whois git

git clone git@github.com:daebenji/cfengine_masterfiles.git /var/cfengine/masterfiles/
