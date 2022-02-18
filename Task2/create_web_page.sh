#!/bin/bash
echo "_________________START_________________"
# Input variables
FILE=/var/www/html/index.html
DISK_SPACE=$(df -Th)
FREE_MEMORY=$(free -h)
OS_VERSION=$(uname -a)
RUN_PROCESSES=$(ps -e)
#install httpd
yum -y update
yum -y install httpd

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
    <h1>Free disk space</h1> 
    <p>$DISK_SPACE</p>
    <h1>Free/used memory in the system</h1> 
    <p>$FREE_MEMORY</p>
    <h1>OS version</h1> 
    <p>$OS_VERSION</p>
    <h1>All running processes</h1> 
    <p>$RUN_PROCESSES</p>
  </body>
</html>
HTML
service httpd start
systemctl enable httpd
echo "______________FINISH____________________"
