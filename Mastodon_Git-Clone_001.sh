#!/bin/bash

git clone https://github.com/Manimajo/Mastodon /home/mastodon/Mastodon

chmod 777 /home/mastodon/Mastodon/*

cp /home/mastodon/Mastodon/Mastodon_004.sh /home/mastodon/Mastodon_004.sh

cd /home/mastodon

./Mastodon_004.sh
