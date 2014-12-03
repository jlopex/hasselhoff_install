#/bin/bash

echo "Installing supervisor"
sudo pip install supervisor

echo "Configuring supervisor"
sudo cp -rT supervisor /etc/supervisor
sudo ln -sT /etc/supervisor/supervisord.conf /etc/supervisord.conf
sudo mv /etc/supervisor/supervisor /etc/init.d/supervisor
sudo chmod +x /etc/init.d/supervisor
sudo chown root:root /etc/init.d/supervisor
sudo mkdir -p /var/log/supervisor/
sudo update-rc.d supervisor defaults
sudo update-rc.d supervisor enable
sudo /etc/init.d/supervisor start
sudo supervisorctl reread

sudo supervisorctl update
sudo supervisorctl start all

