FROM node:20-alpine AS base
WORKDIR /usr/src/app
COPY package*.json ./

FROM base as development
RUN npm install
COPY . .
EXPOSE 8081
CMD [ "npm", "run", "start" ]
