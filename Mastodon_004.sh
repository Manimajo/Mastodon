#!/bin/bash

sudo -u mastodon git clone https://github.com/mastodon/mastodon.git /home/mastodon/live

cd /home/mastodon/live

sudo -u mastodon git checkout $(git tag -l | grep -v 'rc[0-9]*$' | sort -V | tail -n 1)

sudo -u mastodon bundle config deployment 'true'

sudo -u mastodon bundle config without 'development test'

sudo -u mastodon bundle install -j$(getconf _NPROCESSORS_ONLN)

sudo -u mastodon yarn install --pure-lockfile

sudo -u mastodon export RAILS_ENV=production

sudo -u mastodon bundle exec rake mastodon:setup

sudo -u mastodon exit
