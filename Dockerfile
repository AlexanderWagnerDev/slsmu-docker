FROM node:22-alpine

WORKDIR /app

RUN npm install -g http-server

COPY html/build/ /app
COPY html/run.js /run.js

EXPOSE 3000

CMD ["node", "/run.js"]
