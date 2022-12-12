#!/bin/bash

cp /home/mastodon/live/dist/nginx.conf /etc/nginx/sites-available/mastodon

ln -s /etc/nginx/sites-available/mastodon /etc/nginx/sites-enabled/mastodon

sed -i 's/example.com/mastodon.impulsreha.local/g' /etc/nginx/sites-enabled/mastodon.conf

cd

cd ..

cd etc

mkdir cert

cd cert

openssl req -x509 -newkey rsa:4096 -sha256 -days 3650 -nodes -keyout example.key -out example.crt -subj "/CN=example.com" -addext "subjectAltName=DNS:example.com,DNS:www.example.net,IP:10.0.0.1"
