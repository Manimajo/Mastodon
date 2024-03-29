#!/bin/bash

git clone https://github.com/mastodon/mastodon.git /home/mastodon/live

chmod 777 -R /home

cd /home/mastodon/live

sudo -u mastodon gem install puma

sudo -u mastodon gem install sidekiq

sudo -u mastodon gem install webpush

sudo -u mastodon gem install mini_portile2

sudo -u mastodon gem install webauthn

sudo -u mastodon gem install cose

sudo -u mastodon gem install openssl

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
