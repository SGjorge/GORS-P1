FROM centos:7

MAINTAINER docker

#update apt listsm, packages and upgrade the system
RUN yum -y update && yum upgrade -y

# create a new user called docker
RUN useradd -ms /bin/bash docker && echo "docker:docker" | chpasswd -m

# execute ssh autoexecute
	# Levantar puerto 22 para ssh
	EXPOSE 22

	# Install ssh
	RUN yum install -y openssh openssh-server openssh-clients openssl-libs
	# RUN apt install net-tools
	# RUN ssh-keygen -t rsa
	# RUN ssh-keygen -y
	RUN sshd-keygen
	CMD ["/usr/sbin/sshd", "-D"]