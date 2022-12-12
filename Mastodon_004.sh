#!/bin/bash

sudo -u mastodon bash <<EOF
echo "In"

git clone https://github.com/mastodon/mastodon.git /home/mastodon/live && cd live

git checkout $(git tag -l | grep -v 'rc[0-9]*$' | sort -V | tail -n 1)

bundle config deployment 'true'

bundle config without 'development test'

bundle install -j$(getconf _NPROCESSORS_ONLN)

yarn install --pure-lockfile

export RAILS_ENV=production

bundle exec rake mastodon:setup

echo "Out"
EOF
