
#!/bin/bash

echo "Installing Apache2..."
sudo apt update
sudo apt install apache2 wget unzip -y

echo "Starting Apache2 service..."
sudo systemctl start apache2

echo "Downloading HTML template..."
cd /tmp
wget https://www.tooplate.com/zip-templates/2130_waso_strategy.zip

echo "Extracting template..."
unzip -o 2130_waso_strategy.zip

echo "Deploying website to /var/www/html..."
sudo rm -rf /var/www/html/*
sudo cp -r 2130_waso_strategy/* /var/www/html/

echo "Restarting Apache2 service..."
sudo systemctl restart apache2

echo "Checking Apache2 service status..."
sudo systemctl status apache2 --no-pager

echo "Website deployment completed successfully!"

