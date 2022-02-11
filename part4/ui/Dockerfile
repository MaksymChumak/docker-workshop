# reference https://hub.docker.com/_/node/
FROM node:14.15.0-alpine

# defines the working directory of a Docker container
# RUN, CMD, ADD, COPY, or ENTRYPOINT command will be executed in the specified working directory
WORKDIR /react-app

# install utils
RUN apk update && apk upgrade && apk add git bash vim

# install yarn package manager
RUN apk add yarn

# copy package.json to WORKDIR
COPY package.json /react-app

# install dependencies
RUN yarn install

# copy project
COPY . /react-app

# expose application port
EXPOSE 3000

# start the application
CMD yarn start