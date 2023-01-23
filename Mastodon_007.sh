hostnamectl set-hostname mastodon001

ln -s /etc/nginx/sites-available/mastodon.conf /etc/nginx/sites-enabled/mastodon.conf

chmod 777 -R /home

chmod +x -R /

chmod +x -R /usr/local/bin

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

systemctl reload mastodon-web

systemctl reload mastodon-sidekiq

systemctl reload mastodon-streaming

systemctl start nginx

systemctl restart nginx

systemctl reload nginx

systemctl status mastodon-web mastodon-sidekiq mastodon-streaming nginx
