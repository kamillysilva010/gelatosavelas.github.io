/// Utilizando os aplicativos e sistemas operacionais
FROM node:18-alpine
FROM mysql:latest

//Configurar a pasta do projeto
WORKDIR /app

//Instalando o pacote para o Node.js
COPY package*.json ./
RUN npm install

COPY . .

CMD [ "node", "app.js" ]

//Configurando o banco de dados
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=mydatabase