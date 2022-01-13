FROM node:14-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install
COPY . .
RUN yarn build

EXPOSE 8080
CMD [ "yarn", "serve" ]
