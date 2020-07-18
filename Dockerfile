# a Dockerfile must begin with FROM command which specifies a parent image
FROM centos:7

# STEP 1: BUILDING a Docker image

# EXECUTE: docker build . to build an image
# EXECUTE: docker images | grep centos to view the image details

# EXECUTE: docker docker build -t test-1 . to build an image under a custom tag
# EXECUTE: docker images | grep test-1 to view the image details

# -t option creates tag(alias) for an image, notice that IMAGE_ID (unique hash is the same for both images)

# STEP 2: CREATING Docker container (executing Docker image)

# EXECUTE: docker ps to list all running containers (you should see none)
# EXECUTE: docker run --name centos_base -d centos:7 /bin/bash -c "while true; do echo hello world; sleep 1; done"
# NOTE: the above command starts a Docker container named centos_base as a daemon based on image centos:7
# OPTIONS OVERVIEW:
#  -d starts docker container as a daemon running in the background
#  --name assigns a container specified name which has to be unique, otherwise a randomly generated name is assigned
#  /bin/bash -c "while true; do echo hello world; sleep 1; done" is necessary to keep the container running, otherwise it will immediately exit
# EXECUTE: docker exec -it centos_base bash to create interactive session with the container
# EXECUTE: docker stop centos_base to stop the container
# EXECUTE: docker ps -a to list all containers on the system and verify successful termination of the container
# EXECUTE: docker rm centos_base to remove the container

# EXECUTE: docker ps to list all running containers (you should see none)
# EXECUTE: docker run --name centos_base -it centos:7
# EXECUTE: docker ps to list all running containers (you should see none because the container stopped the moment we ended the interactive session
# EXECUTE: docker rm centos_base to remove the container



