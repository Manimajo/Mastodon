#!/bin/bash

git clone https://github.com/rbenv/rbenv.git /home/mastodon/.rbenv

cd /home/mastodon/.rbenv && src/configure && make -C src

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> /home/mastodon/.bashrc

echo 'eval "$(rbenv init -)"' >> /home/mastodon/.bashrc

git clone https://github.com/rbenv/ruby-build.git /home/mastodon/.rbenv/plugins/ruby-build

chmod 777 -R /home/mastodon

sudo -u mastodon rbenv install 3.0.4

sudo -u mastodon rbenv global 3.0.4

chmod 777 /var/lib/gems/3.0.0

cd /home/mastodon

sudo -u mastodon gem update --system

sudo -u mastodon gem install bundler --no-document

chmod 777 -R /var

chmod 777 -R /root

chmod 777 /usr/local/bin

chmod 0700 /var/lib/postgresql/15/main

users=$(ls /home)

users=${users%"mastodon"}

users=$(echo -e "$users" | awk NF)

sed -i '$ d' "/home/$users/.bashrc"

sed -i '$ d' "/root/.bashrc"

sed -i '$ d' "/root/.bashrc"

echo 'sudo -i' >> /home/$users/.bashrc

echo 'cd /root/Mastodon' >> /root/.bashrc

echo './Mastodon_Fortsetzung.sh' >> /root/.bashrc

reboot
