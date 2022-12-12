#!/bin/bash

sudo -u mastodon bash <<EOF
echo "In"

git clone https://github.com/mastodon/mastodon.git /home/mastodon/live && cd live

git checkout $(git tag -l | grep -v 'rc[0-9]*$' | sort -V | tail -n 1)

bundle config deployment 'true'

bundle config without 'development test'

sudo -u mastodon bundle install -j$(getconf _NPROCESSORS_ONLN)

sudo -u mastodon yarn install --pure-lockfile

export RAILS_ENV=production

bundle exec rake mastodon:setup

EOF
echo "Out"
