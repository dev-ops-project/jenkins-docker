# jenkins-docker
Running the jenkins as docker container 

clone the this repository 
git clone 

Build Docker Images and Run Containers

Jenkins data image
$ docker build -t jenkins-data -f Dockerfile-data .

Jenkins master image
$ docker build -t jenkins2 .

We can launch the containers for each image:
$ docker run --name=jenkins-data jenkins-data
$ docker run -p 8080:8080 -p 50000:50000 --name=jenkins-master --volumes-from=jenkins-data -d jenkins2

Setting Up Jenkins 2.0
Now that we are running an instance of Jenkins at ‘http://<host>:8080/’ (Assuming <host> is your Docker-Machine or equivalent IP), we can setup up some additional things:
Admin Password
Jenkins 2.0 will ask for the admin password stored in the Jenkins master container. We can get it and paste it in the console

$ docker exec jenkins-master cat /var/jenkins_home/secrets/initialAdminPassword
