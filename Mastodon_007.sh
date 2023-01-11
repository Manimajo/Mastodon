sed -i 's/mastodon.mastodon.local/mastodon.example.com/g' /etc/nginx/sites-available/mastodon.conf

chmod 777 -R /home

chmod +x -R /

systemctl start nginx

systemctl restart nginx

systemctl reload nginx

cp /home/mastodon/live/dist/mastodon-web.service /etc/systemd/system/

cp /home/mastodon/live/dist/mastodon-sidekiq.service /etc/systemd/system/

cp /home/mastodon/live/dist/mastodon-streaming.service /etc/systemd/system/

systemctl start mastodon-web

systemctl start mastodon-sidekiq

systemctl start mastodon-streaming

systemctl enable mastodon-web

systemctl enable mastodon-sidekiq

systemctl enable mastodon-streaming

systemctl status mastodon-web mastodon-sidekiq mastodon-streaming

hostnamectl set-hostname mastodon
