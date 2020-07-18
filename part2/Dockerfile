# a Dockerfile must begin with FROM command which specifies a parent image
FROM centos:7

# RUN executes a specified linux command
# below we install some useful utils using yum package manager,
# they will be available in all containers created from this image
RUN yum -y update && yum -y install vim git curl

# EXECUTE: # EXECUTE: docker images | grep centos to view the image details to build the image
# EXECUTE: docker images | grep centos to view the image details
# NOTE: notice the size difference between the bare bone centos:7 image and our centos_utils:7 image

# EXECUTE: docker ps to list all running containers (you should see none)
# EXECUTE: docker run --name centos_utils -it centos_utils:7
# EXECUTE: curl -I assistlist.ca
# EXECUTE: vim test.txt to create a test file
# EXECUTE: exit to exit the container and docker start centos_utils to start the container again
# EXECUTE: docker exec -it centos_utils bash to create interactive session
#  and check that previously created test.txt file persists with ls | grep test.txt
# EXECUTE: docker stop centos_utils to stop the container
# EXECUTE: docker ps to list all running containers (you should see none because the container stopped the moment we ended the interactive session
# EXECUTE: docker rm centos_utils to remove the container