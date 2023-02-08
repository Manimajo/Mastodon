#!/bin/bash

apt install postgresql postgresql-contrib

apt install python3-software-properties

apt install software-properties-common

apt install ubuntu-advantage-tools

apt install update-notifier-common

apt-get update

apt-get dist-upgrade

sudo -u postgres bash <<EOF
echo "In"

sudo -u postgres psql

CREATE USER mastodon CREATEDB;

\q

EOF
echo "Out"
