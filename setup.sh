apt-get update
apt-get upgrade
sh -c "echo deb http://download.opensuse.org/repositories/multimedia:/xiph/xUbuntu_18.10/ ./ >>/etc/apt/sources.list.d/icecast.list"
wget -qO - https://build.opensuse.org/projects/multimedia:libs/public_key | sudo apt-key add -
apt-get update
apt-get install icecast2
apt-get install liquidsoap
git clone https://github.com/LibreTime/libretime.git
cd libretime
./install -fiap
systemctl enable libretime-liquidsoap
systemctl enable libretime-playout
systemctl enable libretime-celery
systemctl enable libretime-analyzer
systemctl enable apache2
systemctl enable rabbitmq-server
