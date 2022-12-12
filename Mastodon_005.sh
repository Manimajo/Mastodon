#!/bin/bash

sudo -u mastodon bash << EOF
echo "in"

cd live

git checkout $(git tag -l | grep -v 'rc[0-9]*$' | sort -V | tail -n 1)

bundle config deployment 'true'

bundle config without 'development test'

bundle install -j$(getconf _NPROCESSORS_ONLN)

yarn install --pure-lockfile

sudo -u mastodon RAILS_ENV=production bundle exec rake mastodon:setup

EOF
echo "out"
