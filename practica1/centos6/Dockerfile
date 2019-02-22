FROM centos:6

MAINTAINER docker

#update apt listsm, packages and upgrade the system
RUN yum -y update && yum -y upgrade 

# create a new user called docker
RUN useradd -ms /bin/bash docker && echo "docker:docker" | chpasswd -m

# execute ssh autoexecute
	# Levantar puerto 22 para ssh
	EXPOSE 22

	# Install ssh
	RUN yum install -y openssh-server
	# RUN apt install net-tools
	CMD service sshd start #&& sleep infinity &# o sino se lanza con -d para dejarlo corriendo
	#CMD etc/init.d/sshd start -d no funciona -d en centos
	#CMD ["/etc/init.d/sshd","start","-D"]
	#CMD ["systemctl", "start", "sshd.service"]
	CMD ["/usr/sbin/sshd", "-D"]