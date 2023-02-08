#!/bin/bash

sudo -u postgres bash <<EOF
echo "In"

psql

CREATE USER mastodon CREATEDB;

\q

EOF
echo "Out"
