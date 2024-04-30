FROM node:14
WORKDIR /app
COPY package*.json /app
RUN npm install
COPY . .
RUN npm install -g docker-compose
EXPOSE 3005
CMD ["npm", "start"]
