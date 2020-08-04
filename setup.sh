apt-get update
apt-get upgrade
sudo sh -c "echo deb http://download.opensuse.org/repositories/multimedia:/xiph/xUbuntu_18.10/ ./ >>/etc/apt/sources.list.d/icecast.list"
wget -qO - https://build.opensuse.org/projects/multimedia:libs/public_key | sudo apt-key add -
apt-get update
apt-get install icecast2
apt-get install liquidsoap
git clone https://github.com/LibreTime/libretime.git
cd libretime
sudo ./install -fiap
sudo systemctl enable libretime-liquidsoap
sudo systemctl enable libretime-playout
sudo systemctl enable libretime-celery
sudo systemctl enable libretime-analyzer
sudo systemctl enable apache2
sudo systemctl enable rabbitmq-server
