#!/bin/bash

chmod 777 -R /var

sudo -u mastodon apt install ruby

chmod 777 -R /var

chmod 777 /usr/local/bin

sudo -u mastodon gem install bundler --no-document
