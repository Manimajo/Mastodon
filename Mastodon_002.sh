#!/bin/bash

sudo -u mastodon apt install ruby full

chmod 777 -R /var

chmod 777 /usr/local/bin

sudo -u mastodon gem install bundler --no-document
