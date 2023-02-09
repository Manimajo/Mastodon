apt-get update

apt-get upgrade -y

apt install rbenv -y

apt install ruby-dev -y

apt install -y curl wget gnupg apt-transport-https lsb-release ca-certificates

curl -sL https://deb.nodesource.com/setup_16.x | bash -

wget -O /usr/share/keyrings/postgresql.asc https://www.postgresql.org/media/keys/ACCC4CF8.asc

echo "deb [signed-by=/usr/share/keyrings/postgresql.asc] http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/postgresql.list

apt update

apt install -y imagemagick ffmpeg libpq-dev libxml2-dev libxslt1-dev file git-core g++ libprotobuf-dev protobuf-compiler pkg-config nodejs gcc autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm-dev nginx redis-server redis-tools postgresql postgresql-contrib certbot python3-certbot-nginx libidn11-dev libicu-dev libjemalloc-dev

apt install postgresql postgresql-contrib -y

apt install python3-software-properties -y

apt install software-properties-common -y

apt install ubuntu-advantage-tools -y

apt install update-notifier-common -y

apt-get update -y

apt-get dist-upgrade -y

corepack enable

yarn set version classic

