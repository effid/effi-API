# FROM node:10
FROM arm32v7/node:10.21

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .

EXPOSE 10000

CMD [ "node", "server.js" ]
