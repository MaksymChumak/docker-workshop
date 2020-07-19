# a Dockerfile must begin with FROM command which specifies a parent image
# reference: https://hub.docker.com/_/centos
FROM centos:7

# defines the working directory of a Docker container
# RUN, CMD, ADD, COPY, or ENTRYPOINT command will be executed in the specified working directory
WORKDIR /node-app

# RUN executes a specified linux command
# below we install some useful utils using yum package manager,
# they will be available in all containers created from this image
RUN yum -y update && yum -y install vim lsof git curl

# add node repository with specified version of node
RUN curl -sL https://rpm.nodesource.com/setup_13.x | bash -
RUN yum -y install cmake nodejs

# copy package.json to WORKDIR
COPY package.json /node-app

# install dependencies
RUN npm install

# copy the content of current directory(where our app is located) to WORKDIR
COPY . /node-app

# open port 8080 from the container to the outside world
EXPOSE 8080

# start application on container start
CMD node server.js

# EXECUTE: docker build -t centos_node:7 . to build the image under a custom tag

# EXECUTE: docker images | grep centos to view the image details
# NOTE: notice the size difference between the centos_utils:7 image and new centos_node:7 image

# EXECUTE: docker ps to list all running containers (you should see none)
# EXECUTE: docker run -p 3000:8080 --name centos_node -d centos_node:7
# NOTE: navigate to http://localhost:3000 in your browser to see the returned string
# OPTIONS OVERVIEW:
#  -d starts docker container as a daemon running in the background
#  --name assigns a container specified name which has to be unique, otherwise a randomly generated name is assigned
#  -p setup port forwarding from port 8080 of the container to port 3000 of your machine
# NOTICE: we didn't have to specify the command for the container to run when started(as we did in part 1)
# because we defined CMD option in our Dockerfile

# EXECUTE: docker exec -it centos_node bash to create interactive session with the container
# EXECUTE:
#  pwd to see current working directory defined by WORKDIR
#  ls to see that node server was successfuly copied
#  lsof -i :8080 to see that node is running on port 8080
#  exit to terminate the session

# EXECUTE: docker stop centos_node to stop the container
# EXECUTE: docker ps -a to list all running containers (you should see none because the container stopped the moment we ended the interactive session
# EXECUTE: docker rm centos_node to remove the container