### In one host installing ELK, on second metricbeat and Docker with containers ngnix, filebeat


### host1
#### install&config ELK
java -version
sudo apt install default-jre
sudo apt install default-jdk

#sudo apt update
#sudo apt install nginx

curl -fsSL https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list
sudo apt update
sudo apt install elasticsearch

sudo nano /etc/elasticsearch/elasticsearch.yml
network.host: localhost

sudo systemctl start elasticsearch
sudo systemctl enable elasticsearch


sudo apt install kibana
sudo systemctl enable kibana
sudo systemctl start kibana

echo "kibanaadmin:`openssl passwd -apr1`" | sudo tee -a /etc/nginx/htpasswd.users
sudo nano /etc/nginx/sites-available/your_domain
server {
    listen 80;

    server_name 192.168.100.2;

    auth_basic "Restricted Access";
    auth_basic_user_file /etc/nginx/htpasswd.users;

    location / {
        proxy_pass http://localhost:5601;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_cache_bypass $http_upgrade;
    }
}

sudo ln -s /etc/nginx/sites-available/192.168.100.2 /etc/nginx/sites-enabled/192.168.100.2
sudo nginx -t

sudo systemctl reload nginx
sudo ufw allow 'Nginx Full'

sudo apt install logstash
sudo nano /etc/logstash/conf.d/02-beats-input.conf

[label /etc/logstash/conf.d/02-beats-input.conf] input { beats { port => 5044 }
}

sudo nano /etc/logstash/conf.d/30-elasticsearch-output.conf

[label /etc/logstash/conf.d/30-elasticsearch-output.conf] output { if
[@metadata][pipeline] { elasticsearch { hosts => ["localhost:9200"]
manage_template => false index =>
"%{[@metadata][beat]}-%{[@metadata][version]}-%{+YYYY.MM.dd}" pipeline =>
"%{[@metadata][pipeline]}" } } else { elasticsearch { hosts =>
["localhost:9200"] manage_template => false index =>
"%{[@metadata][beat]}-%{[@metadata][version]}-%{+YYYY.MM.dd}" } } }

sudo systemctl start logstash
sudo systemctl enable logstash

====================================================================================================================================================================
### host2
#### nginx container (to make logs)
docker run -d -p 8080:80 --name nginx nginx                     

#### install&config docker filebeat
docker pull docker.elastic.co/beats/filebeat:8.1.0
docker pull docker.elastic.co/beats/metricbeat:8.1.0

curl -L -O https://raw.githubusercontent.com/elastic/beats/8.1/deploy/docker/filebeat.docker.yml

filebeat.docker.yml

 #output.elasticsearch:
   #hosts: '${ELASTICSEARCH_HOSTS:localhost:9200}'
output.logstash:
   hosts: '${LOGSTASH_HOSTS:192.168.100.2:5044}'

docker run -d \
  --name=filebeat \
  --user=root \
  --volume="$(pwd)/filebeat.docker.yml:/usr/share/filebeat/filebeat.yml:ro" \
  --volume="/var/lib/docker/containers:/var/lib/docker/containers:ro" \
  --volume="/var/run/docker.sock:/var/run/docker.sock:ro" \
  docker.elastic.co/beats/filebeat:8.1.0 filebeat -e --strict.perms=false


#### install&config metricbeat
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://artifacts.elastic.co/packages/8.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-8.x.list
sudo apt-get update && sudo apt-get install metricbeat

metricbeat modules enable logstash-xpack

modules.d/logstash-xpack.yml

module: logstash
    metricsets:
      - node
      - node_stats
    period: 10s
    hosts: ["192.168.100.2:5044"]
    #username: "user"
    #password: "secret"
    xpack.enabled: true

metricbeat.yml

#output.elasticsearch:
  #hosts: "[localhost:9200]"
output.logstash:
   hosts: "[192.168.100.2:5044]"
setup.kibana:
    host: "192.168.100.2:5601"

sudo metrickbeat modules enable docker
docker.yml > configure metricsets
sudo metricbeat setup
sudo service metricbeat start



====================================================================================================================================================================


wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo gpg --dearmor -o /usr/share/keyrings/elasticsearch-keyring.gpg


sudo apt-get install apt-transport-https

echo "deb [signed-by=/usr/share/keyrings/elasticsearch-keyring.gpg] https://artifacts.elastic.co/packages/8.x/apt stable main" | sudo tee /etc/apt/sources.list.d/elastic-8.x.list

sudo apt-get update && sudo apt-get install elasticsearch
sudo apt-get install kibana
sudo apt-get install logstash



bin/elasticsearch-create-enrollment-token -s kibana

sudo /bin/systemctl enable kibana.service

sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable elasticsearch.service



sudo systemctl start elasticsearch.service
sudo systemctl stop elasticsearch.service

echo "1234" > /path/to/my_pwd_file.tmp
chmod 600 /path/to/my_pwd_file.tmp
sudo systemctl set-environment ES_KEYSTORE_PASSPHRASE_FILE=/path/to/my_pwd_file.tmp
sudo systemctl start elasticsearch.service





















