FROM node:18-alpine
FROM mysql:latest

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

CMD [ "node", "app.js" ]

ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=mydatabase