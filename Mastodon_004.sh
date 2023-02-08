#!/bin/bash

git clone https://github.com/mastodon/mastodon.git /home/mastodon/live

chmod 777 -R /home

cd /home/mastodon/live

git checkout -f $(git tag -l | grep -v 'rc[0-9]*$' | sort -V | tail -n 1)

chmod 777 -R /home/mastodon

chmod 777 -R /home/mastodon

cd /home/mastodon/live

sudo -u mastodon bundle config deployment 'true'

sudo -u mastodon bundle config without 'development test'

sudo -u mastodon bundle install -j$(getconf _NPROCESSORS_ONLN)

cd /home/mastodon/live

sudo -u mastodon yarn install --pure-lockfile

sudo -u mastodon RAILS_ENV=production bundle exec rake mastodon:setup
