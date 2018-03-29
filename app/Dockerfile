FROM node:boron

ARG NODE=production
ENV NODE_ENV=${NODE}
ENV NODEJS_API_PORT=8080
 
RUN npm install pm2 -g \
    && apt-get update -q \
    && apt-get install mysql-client -y -q

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json .
COPY server.js .
RUN npm install

EXPOSE 3000

CMD [ "npm", "start", "server.js" ]
