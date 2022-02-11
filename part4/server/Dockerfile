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