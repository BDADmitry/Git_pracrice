#!/bin/bash
# Input variables
FILE=/var/www/html/index.html
OS_VERSION=$(uname -a)

apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

apt-get update -y
apt-get install -y docker-ce docker-ce-cli containerd.io
#install httpd
apt-get install -y apache2

# Create file step
touch $FILE

#OS version, free disk space,  free/used memory in the system and all running processes
cat << HTML > $FILE
<!DOCTYPE html>
<html>
  <head>
    <title>New Page</title>
  </head>
  <body>
    <h1>Hello, World!</h1>
    <p> </p>
    <h1>OS version</h1> 
    <p>$OS_VERSION</p>
  </body>
</html>
HTML
service apache2 start
systemctl enable apache2

