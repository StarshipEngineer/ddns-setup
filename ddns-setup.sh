#!/bin/bash

apt-get update
apt-get -y upgrade
apt-get -y install ddclient libio-socket-ssl-perl

#config copy

#anything else there?
sed -i '\crun_daemon="true"' /etc/default/ddclient

sudo service ddclient start

sudo service ddclient status

cp /ddclient.cron /etc/cron.daily/ddclient
sudo chmod +x /etc/cron.daily/ddclient