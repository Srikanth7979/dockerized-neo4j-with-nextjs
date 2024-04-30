FROM node:14

WORKDIR /app

COPY package*.json ./

RUN npm install

# Install docker-compose
RUN apt-get update && apt-get install -y docker-compose

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
