#!/bin/bash

git clone https://github.com/rbenv/rbenv.git /home/mastodon/.rbenv

cd /home/mastodon/.rbenv && src/configure && make -C src

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> /home/mastodon/.bashrc

echo 'eval "$(rbenv init -)"' >> /home/mastodon/.bashrc

git clone https://github.com/rbenv/ruby-build.git /home/mastodon/.rbenv/plugins/ruby-build

cd /home/mastodon/.rbenv/

rbenv install 3.0.4 /home/mastodon/.rbenv/

rbenv global 3.0.4

gem install bundler --no-document

exit
