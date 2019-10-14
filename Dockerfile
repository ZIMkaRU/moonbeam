FROM node:10.16.3-alpine

COPY package.json init.configs.sh ./
COPY config/moonbeam.redis.conf.json.example \
  config/moonbeam.mongo.conf.json.example \
  config/mongo.pubtrades.conf.json.example \
  config/moonbeam.conf.json.example \
  config/

RUN apk add --no-cache \
  git \
  openssh \
  bash \
  &&npm install \
  &&./init.configs.sh

CMD ["node", "worker.js"]
