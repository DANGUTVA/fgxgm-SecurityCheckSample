FROM node:20.18.0-bookworm-slim

RUN apt-get update && apt-get upgrade -y
RUN npm install -g npm@9.1.3

ADD package.json .
ADD index.js .
ADD build .
COPY . .
RUN npm install

EXPOSE 8080

CMD [ "node", "index.js" ]
