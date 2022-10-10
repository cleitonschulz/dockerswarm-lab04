    echo "192.168.182.131 ds001" >>/etc/hosts
    echo "192.168.182.129 ds002" >>/etc/hosts
    echo "192.168.182.130 ds003" >>/etc/hosts
	
	
	yum install mlocate vim -y
	
	
	
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
	
	
	
	
	sudo systemctl start docker
	
	
	adduser dockeruser
	
	
	passwd dockeruser
			(*************)
	
	
	ssh-copy-id -f -i kp_cs_lab04_public dockeruser@192.168.182.131
	
	
	sudo groupadd dockergroup
	
	sudo usermod -aG dockergroup dockeruser
	
		
	[dockeruser@ds001 ~]$ id -u
	1000
	[dockeruser@ds001 ~]$ whoami
	dockeruser
	[dockeruser@ds001 ~]$ grep ^$(whoami): /etc/subuid
	dockeruser:100000:65536
	[dockeruser@ds001 ~]$ grep ^$(whoami): /etc/subgid
	dockeruser:100000:65536
	
	
	
	echo "user.max_user_namespaces=28633" >>/etc/sysctl.conf
	
	sudo sysctl --system
	
			* Applying /usr/lib/sysctl.d/00-system.conf ...
			net.bridge.bridge-nf-call-ip6tables = 0
			net.bridge.bridge-nf-call-iptables = 0
			net.bridge.bridge-nf-call-arptables = 0
			* Applying /usr/lib/sysctl.d/10-default-yama-scope.conf ...
			kernel.yama.ptrace_scope = 0
			* Applying /usr/lib/sysctl.d/50-default.conf ...
			kernel.sysrq = 16
			kernel.core_uses_pid = 1
			kernel.kptr_restrict = 1
			net.ipv4.conf.default.rp_filter = 1
			net.ipv4.conf.all.rp_filter = 1
			net.ipv4.conf.default.accept_source_route = 0
			net.ipv4.conf.all.accept_source_route = 0
			net.ipv4.conf.default.promote_secondaries = 1
			net.ipv4.conf.all.promote_secondaries = 1
			fs.protected_hardlinks = 1
			fs.protected_symlinks = 1
			* Applying /etc/sysctl.d/99-sysctl.conf ...
			user.max_user_namespaces = 28633
			* Applying /etc/sysctl.conf ...
			user.max_user_namespaces = 28633
			
	ssh -i chaves/kp_cs_lab04.pem dockeruser@192.168.182.131   
				### necessário não usar o sudo


	/usr/bin/dockerd-rootless-setuptool.sh install
	
		
	
	
	