FROM jenkins/ssh-agent:latest
USER root
RUN apt-get update && apt-get install -y lsb-release && apt-get install -y ca-certificates \
  && apt-get install -y curl && apt-get install -y gnupg && apt-get install -y lsb-release && apt-get install -y git
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
RUN echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
RUN apt-get update && apt-get install -y docker-ce-cli
