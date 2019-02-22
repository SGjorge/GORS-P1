FROM ubuntu:16.04

MAINTAINER docker

#update apt listsm, packages and upgrade the system
RUN apt-get update && apt-get upgrade -y

# create a new user called docker with pass user
RUN useradd -ms /bin/bash docker && echo "docker:docker" | chpasswd -m

# execute ssh autoexecute
	# Levantar puerto 22 para ssh
	EXPOSE 22

	# Install ssh
	RUN apt-get -y install ssh 
	# RUN apt install net-tools
	CMD service ssh start -d # o "&& sleep infinity" o sino se lanza con -d para dejarlo corriendo
