users=$(ls /home)

users=${users%"mastodon"}

users=$(echo -e "$users" | awk NF)

sed -i '$ d' /root/.bashrc

sed -i '$ d' "/home/$users/.bashrc"
