# image with node 13 and aws cli installed
FROM node:13.13.0-alpine

RUN apk update && apk upgrade && apk add git python-dev py-pip yarn
RUN pip install awscli

# ACTION: create an account on https://hub.docker.com/
# EXECUTE: docker build -t <username>/node13-awscli:demo .
# EXECUTE: docker login
# EXECUTE: docker push <username>/node13-awscli:demo
