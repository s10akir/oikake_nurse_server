FROM node:latest

EXPOSE 80

RUN npm i -g yarn

ADD ./ /app
WORKDIR /app

RUN yarn && yarn build

CMD ["yarn", "start"]

