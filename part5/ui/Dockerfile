# reference https://hub.docker.com/_/node/
FROM node:14.15.0-alpine

# defines the working directory of a Docker container
# RUN, CMD, ADD, COPY, or ENTRYPOINT command will be executed in the specified working directory
WORKDIR /react-app

# install utils
RUN apk update && apk upgrade && apk add git bash vim

# install yarn package manager
RUN apk add yarn

# install app dependencies
COPY package.json /react-app
COPY yarn.lock /react-app

RUN yarn install

# copy project
COPY . /react-app

# expose application port
EXPOSE 3000

# start app
CMD ["yarn", "start"]
