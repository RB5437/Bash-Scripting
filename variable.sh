
#!/bin/bash


#variable Declaration
PACKAGE="apache2 wget unzip"
SVC="apache2"
URL='https://www.tooplate.com/zip-templates/2130_waso_strategy.zip'
ART_NAME='2130_waso_strategy'
TEMPDIR="/tmp"

echo "Installing Apache2..."
sudo apt update
sudo apt install $PACKAGE -y

echo "Starting Apache2 service..."
sudo systemctl start $SVC

echo "Downloading HTML template..."
cd $TEMPDIR
wget $URL

echo "Extracting template..."
unzip -o $ART_NAME.zip

echo "Deploying website to /var/www/html..."
sudo rm -rf /var/www/html/*
sudo cp -r $ART_NAME/* /var/www/html/

echo "Restarting Apache2 service..."
sudo systemctl restart $SVC

echo "Checking Apache2 service status..."
sudo systemctl status $SVC --no-pager

echo "Website deployment completed successfully!"
