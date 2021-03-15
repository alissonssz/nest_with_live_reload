FROM node:latest

WORKDIR /app

COPY . .

RUN npm i --silent

RUN npm run build 

CMD ["npm", "run", "start:dev"]