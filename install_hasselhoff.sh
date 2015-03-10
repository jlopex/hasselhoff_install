#/bin/bash

echo "Installing hasselhoff system dependencies"
sudo apt-get install python-dev python-tk python-pip redis-server

echo "Installing hasselhoff pip dependencies"
sudo pip install supervisor gunicorn rq-dashboard awscli requests

echo "Installing hasselhoff"

sudo mkdir -p /var/www/
pushd /var/www/
sudo git clone https://github.com/wuakitv/hasselhoff.git
sudo mkdir -p hasselhoff/tmp/
sudo mkdir -p hasselhoff/logs/
sudo chmod -R 775 hasselhoff/
sudo chown -R ci:users hasselhoff/
popd

