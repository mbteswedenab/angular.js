FROM openjdk:21-slim-bullseye
WORKDIR /
RUN apt-get update
RUN apt-get install -y --force-yes curl git
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y --force-yes nodejs
RUN npm install -g yarn
ADD ./ /angular.js/
RUN cd angular.js && yarn install && yarn grunt package
