#!/bin/bash

cp /home/mastodon/live/dist/nginx.conf /etc/nginx/sites-available/mastodon

ln -s /etc/nginx/sites-available/mastodon /etc/nginx/sites-enabled/mastodon

sed -i 's/example.com/mastodon.impulsreha.local/g' /etc/nginx/sites-available/mastodon

cd

cd ..

cd etc

mkdir cert

cd cert

openssl req -x509 -newkey rsa:4096 -sha256 -days 3650 -nodes -keyout example.key -out example.crt -subj "/CN=example.com" -addext "subjectAltName=DNS:example.com,DNS:www.example.net,IP:10.0.0.1"

cd

sed -i '37d d' /etc/nginx/sites-available/mastodon

sed -i '38d d' /etc/nginx/sites-available/mastodon

sed -i '37a ssl_certificate /etc/cert/example.crt' /etc/nginx/sites-available/mastodon

sed -i '38a ssl_certificate_key /etc/cert/example.key' /etc/nginx/sites-available/mastodon
