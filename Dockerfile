FROM node

#создание директории приложения
WORKDIR /usr/src/app/

#установка зависимостей
COPY package*.json .

RUN yarn install

COPY . .

#RUN yarn test
RUN yarn build

#выставить порт 3000
EXPOSE 3000

CMD yarn start