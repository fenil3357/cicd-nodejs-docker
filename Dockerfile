FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm ci --only=production

COPY . .

EXPOSE 3000

RUN npm install pm2 -g

CMD ["npm", "run", "start"]