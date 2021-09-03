FROM node:16-alpine

RUN apk add --no-cache dumb-init curl \
    && rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
