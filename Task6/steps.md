##Tasks:
1. Install Jenkins. It must be installed in a docker container.
2. Install necessary plugins (if you need).
3. Configure several (2-3) build agents. Agents must be run in docker.
4. Create a Freestyle project. Which will show the current date as a result of execution.
5. Create Pipeline which will execute docker ps -a in docker agent, running on Jenkins master’s Host.
6. Create Pipeline, which will build artifact using Dockerfile directly from your github repo (use Dockerfile from previous task).
7. Pass  variable PASSWORD=QWERTY! To the docker container. Variable must be encrypted!!!


==========================================================================
##Steps:

###1. Install Jenkins
####commands in shell:
   sudo groupadd docker
   sudo usermod -aG docker $USER

docker network create jenkins

docker run --name jenkins-docker --rm --detach \
  --privileged --network jenkins --network-alias docker \
  --env DOCKER_TLS_CERTDIR=/certs \
  --volume jenkins-docker-certs:/certs/client \
  --volume jenkins-data:/var/jenkins_home \
  --publish 2376:2376 \
  docker:dind --storage-driver overlay2

####Create Dockerfile:

  docker build -t myjenkins-blueocean:2.332.1-1 .
####Run jenkins:  
  docker run --name jenkins-blueocean --rm --detach \
  --network jenkins --env DOCKER_HOST=tcp://docker:2376 \
  --env DOCKER_CERT_PATH=/certs/client --env DOCKER_TLS_VERIFY=1 \
  --publish 8080:8080 --publish 50000:50000 \
  --volume jenkins-data:/var/jenkins_home \
  --volume jenkins-docker-certs:/certs/client:ro \
  myjenkins-blueocean:2.332.1-1

- Jenkins first login:  
  sudo docker exec ${CONTAINER_ID or CONTAINER_NAME} cat /var/jenkins_home/secrets/initialAdminPassword
###2. Install plugins
####Used plugins:
- Credentials
- Git
- SSH Build Agents
###3. Create and run DockerAgents

- create Dockerfile for DockerAgent (Added docker-ce-cli, git)
- build DockerAgent image - agent:latest
- ssh-keygen -f ~/.ssh/jenkins_agent_key

-  docker run -d --rm --name=agent1 -p 20:22 \
-e "JENKINS_AGENT_SSH_PUBKEY=[agent ssh key]" \
-v /var/run/docker.sock://var/run/docker.sock \
agent:latest

- sudo usermod -aG docker ${USER}
  sudo chmod 666 /var/run/docker.sock
   