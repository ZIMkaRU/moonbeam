FROM node:10.16.3-alpine

COPY package.json ./

RUN apk add --no-cache \
  git \
  openssh \
  bash \
  &&npm install

CMD ["node", "worker.js"]
