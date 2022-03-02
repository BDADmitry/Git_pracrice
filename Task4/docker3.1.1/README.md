1. build image:

docker build -t ubuntu-apache:1.0 .

2. run docker image:

docker run --rm -p 8080:80 --name ubuntu-apache-container ubuntu-apache:1.0
