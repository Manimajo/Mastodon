#!/bin/bash

apt install postgresql postgresql-contrib

sudo -u postgres bash <<EOF
echo "In"

sudo -u postgres psql

CREATE USER mastodon CREATEDB;

\q

EOF
echo "Out"
