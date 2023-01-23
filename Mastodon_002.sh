#!/bin/bash

git clone https://github.com/rbenv/rbenv.git /home/mastodon/.rbenv

cd /home/mastodon/.rbenv && src/configure && make -C src

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> /home/mastodon/.bashrc

echo 'eval "$(rbenv init -)"' >> /home/mastodon/.bashrc

git clone https://github.com/rbenv/ruby-build.git /home/mastodon/.rbenv/plugins/ruby-build

chmod 777 -R /home/mastodon

sudo -u mastodon rbenv install 3.0.4

sudo -u mastodon rbenv global 3.0.4

chmod 777 -R /var

chmod +x /usr/local/bin/*

chmod +x /usr/*

chmod +x /usr/local/*

chmod +x /*

chmod +x /root/*

chmod +x /root/Mastodon/*

sudo -u mastodon gem install bundler --no-document
