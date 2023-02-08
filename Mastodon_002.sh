#!/bin/bash

git clone https://github.com/rbenv/rbenv.git /home/mastodon/.rbenv

cd /home/mastodon/.rbenv && src/configure && make -C src

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> /home/mastodon/.bashrc

echo 'eval "$(rbenv init -)"' >> /home/mastodon/.bashrc

git clone https://github.com/rbenv/ruby-build.git /home/mastodon/.rbenv/plugins/ruby-build

chmod 777 -R /home/mastodon

sudo -u mastodon rbenv install 3.0.4

sudo -u mastodon rbenv global 3.0.4

gem install bundler --no-document

chmod 777 -R /var

chmod 777 -R /root

chmod 0700 /var/lib/postgresql/15/main

users=$(ls /home)

users=${users%"mastodon"}

users=$(echo -e "$users" | awk NF)

echo "sudo -i" >> "/home/$users/.bashrc"

echo "./Mastodon.sh" >> /root/.bashrc

reboot
