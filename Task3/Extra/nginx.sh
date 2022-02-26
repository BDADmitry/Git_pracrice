#!/bin/bash
# Input variables
FILE=/usr/share/nginx/html/index.html

sudo yum -y update
sudo yum install epel-release -y
sudo yum -y install nginx

# Create file step
sudo touch $FILE

#OS version, free disk space,  free/used memory in the system and all running processes
sudo cat << HTML > $FILE
<!DOCTYPE html>
<html>
  <head>
    <title>New Page</title>
  </head>
  <body>
    <h1>Hello, World!</h1>
    <p> </p>
  </body>
</html>
HTML
sudo systemctl start nginx
sudo systemctl enable nginx

