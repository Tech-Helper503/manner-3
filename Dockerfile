FROM node:14.15.4-alpine as node

WORKDIR /app

COPY package*.json .

RUN yarn install

COPY . .

ENV PORT=5000

RUN export PORT=${nPORT}

RUN ./ngrok http ${PORT}

CMD [ "yarn", "dev" ]

