#!/bin/bash

git clone https://github.com/mastodon/mastodon.git /home/mastodon/live

chmod 777 -R /home

cd /home/mastodon/live

sudo -u mastodon gem install puma

sudo -u mastodon gem install sidekiq

sudo -u mastodon gem install webpush

sudo -u mastodon gem install mini_portile2

git checkout -f $(git tag -l | grep -v 'rc[0-9]*$' | sort -V | tail -n 1)

chmod 777 -R /home/mastodon

chmod 777 -R /home/mastodon

cd /home/mastodon/live

sudo -u mastodon bundle install

cd /home/mastodon/live

sudo -u mastodon yarn install --pure-lockfile

sudo -u mastodon RAILS_ENV=production bundle exec rake mastodon:setup
