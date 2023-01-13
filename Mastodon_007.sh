hostnamectl set-hostname mastodon001

ln -s /etc/nginx/sites-available/mastodon.conf /etc/nginx/sites-enabled/mastodon.conf

chmod 777 -R /home

chmod +x -R /

systemctl start nginx

systemctl restart nginx

systemctl reload nginx

gem install puma

gem install sidekiq

cp /home/mastodon/live/dist/mastodon-web.service /etc/systemd/system/

cp /home/mastodon/live/dist/mastodon-sidekiq.service /etc/systemd/system/

cp /home/mastodon/live/dist/mastodon-streaming.service /etc/systemd/system/

systemctl start mastodon-web

systemctl start mastodon-sidekiq

systemctl start mastodon-streaming

systemctl enable mastodon-web

systemctl enable mastodon-sidekiq

systemctl enable mastodon-streaming

systemctl restart mastodon-web

systemctl restart mastodon-sidekiq

systemctl restart mastodon-streaming

systemctl daemon-reload

systemctl status mastodon-web mastodon-sidekiq mastodon-streaming
