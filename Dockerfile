# Create the image from the latest nodejs
FROM node:latest

MAINTAINER kalise <https://github.com/kalise/>

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

# Declare Env variables
ENV MESSAGE "Hello World!"

EXPOSE 8080
CMD [ "npm", "start" ]