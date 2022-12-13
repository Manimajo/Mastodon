#!/bin/bash

cd ..

git clone https://github.com/mastodon/mastodon.git live && cd live

sudo -u mastodon git checkout $(git tag -l | grep -v 'rc[0-9]*$' | sort -V | tail -n 1)

chmod 777 -R /home/mastodon

bundle config deployment 'true'

bundle config without 'development test'

sudo -u mastodon bundle install -j$(getconf _NPROCESSORS_ONLN)

yarn install --pure-lockfile

chmod 777 -R /home/mastodon

sudo -u mastodon RAILS_ENV=production bundle exec rake mastodon:setup

cd /home/mastodon/Mastodon

./Mastodon_Git-Clone_002.sh
