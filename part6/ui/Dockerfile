# reference: https://medium.com/@tiangolo/react-in-docker-with-nginx-built-with-multi-stage-docker-builds-including-testing-8cc49d6ec305

# --------------------------------------------------------------------------------------------------------------
# stage 0: builds and compiles production UI build
FROM node:14.15.0-alpine as build-stage

# defines the working directory of a Docker container
# RUN, CMD, ADD, COPY, or ENTRYPOINT command will be executed in the specified working directory
WORKDIR /react-app

# install utils yarn package manager
RUN apk update && apk upgrade && apk add yarn

# install app dependencies
COPY package.json /react-app
COPY yarn.lock /react-app

# installs dependencies specified in the package.json file and prevent any updates to the dependencies
RUN yarn install --frozen-lockfile

# copy project
COPY . /react-app

# start app
RUN yarn build

# --------------------------------------------------------------------------------------------------------------
# stage 1: serve compiled react app with NGINX
FROM nginx:1.19

COPY --from=build-stage /react-app/build /usr/share/nginx/html
COPY --from=build-stage /react-app/nginx/nginx.conf /etc/nginx/conf.d/default.conf

# expose port on which NGINX is setup to listen
EXPOSE 3000
