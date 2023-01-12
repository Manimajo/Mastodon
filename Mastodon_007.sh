hostnamectl set-hostname mastodon

sed -i 's/mastodon.impulsreha.local/mastodon.example.com/g' /etc/nginx/sites-available/mastodon.conf

chmod +x -R /home

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

systemctl restart mastodon-web

systemctl restart mastodon-sidekiq

systemctl restart mastodon-streaming

systemctl daemon-reload

systemctl status mastodon-web mastodon-sidekiq mastodon-streaming
