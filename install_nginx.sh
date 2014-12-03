#/bin/bash

echo "Installing nginx"
sudo apt-get install nginx

echo "Configuring nginx"
sudo cp -T nginx/hasselhoff.conf /etc/nginx/sites-available/hasselhoff.conf¬
sudo ln -sT /etc/nginx/sites-available/hasselhoff.conf /etc/nginx/sites-enabled/hasselhoff.conf¬
sudo /etc/init.d/nginx restart¬
