#specify a base image

FROM node:alpine
WORKDIR /usp/app
#Install some Dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./
#Default Command

CMD["npm","start"]
