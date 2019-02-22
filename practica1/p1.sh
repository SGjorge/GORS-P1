docker network create -d bridge --subnet 172.25.10.0/24 centos6_net
docker network create -d bridge --subnet 172.25.20.0/24 centos7_net
docker network create -d bridge --subnet 172.25.30.0/24 ubuntu14_net
docker network create -d bridge --subnet 172.25.40.0/24 ubuntu16_net

docker build -t centos6 ./centos6/
docker build -t centos7 ./centos7/
docker build -t ubuntu14 ./Ubuntu14/
docker build -t ubuntu16 ./Ubuntu16/

docker run -d --network=centos6_net --ip=172.25.10.2 --rm --name=Centos6_1 centos6
docker run -d --network=centos6_net --ip=172.25.10.3 --rm --name=Centos6_2 centos6

docker run -d --network=centos7_net --ip=172.25.20.2 --rm --name=Centos7_1 centos7
docker run -d --network=centos7_net --ip=172.25.20.3 --rm --name=Centos7_2 centos7

docker run -d --network=ubuntu14_net --ip=172.25.30.2 --rm --name=Ubuntu14_1 ubuntu14
docker run -d --network=ubuntu14_net --ip=172.25.30.3 --rm --name=Ubuntu14_2 ubuntu14

docker run -d --network=ubuntu16_net --ip=172.25.40.2 --rm --name=Ubuntu16_1 ubuntu16
docker run -d --network=ubuntu16_net --ip=172.25.40.3 --rm --name=Ubuntu16_2 ubuntu16