    echo "192.168.182.133 ds001" >>/etc/hosts
    echo "192.168.182.129 ds002" >>/etc/hosts
    echo "192.168.182.132 ds003" >>/etc/hosts
	
	
	
	yum install mlocate vim net-tools tcpdump httpd-tools rsync -y
	
	
	
	sudo yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine
				  
				  
	sudo yum install -y yum-utils


	sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
	
	
	
	sudo yum install docker-ce docker-ce-cli containerd.io docker-compose-plugin
	
	
	### melhorar essa seção e liberar apenas entre os nodes...
	firewall-cmd --add-port=2376/tcp --permanent
	firewall-cmd --add-port=2377/tcp --permanent
	firewall-cmd --add-port=7946/tcp --permanent
	firewall-cmd --add-port=7946/udp --permanent
	firewall-cmd --add-port=4789/udp --permanent
	firewall-cmd --reload
	
	sudo systemctl start docker
	
	
	
	docker swarm init --advertise-addr 192.168.182.131
