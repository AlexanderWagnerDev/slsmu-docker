FROM alexanderwagnerdev/alpine:autoupdate-stable

WORKDIR /app

RUN apk update && \
    apk upgrade && \
    apk add --no-cache nodejs npm && \
    rm -rf /var/cache/apk/*

RUN npm install -g http-server

COPY html/build/ /app
COPY html/run.js /run.js

EXPOSE 3000

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]
