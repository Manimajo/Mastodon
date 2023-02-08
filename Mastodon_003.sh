#!/bin/bash

sudo -u postgres bash <<EOF
echo "In"

sudo -u postgres psql

CREATE USER mastodon CREATEDB;

\q

EOF
echo "Out"
