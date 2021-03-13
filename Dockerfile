FROM node:latest

WORKDIR /app/src

COPY package.json /app/src

RUN npm i --silent

COPY . /app/src

RUN npm run build 

CMD ["npm", "run", "start:dev"]