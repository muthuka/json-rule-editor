FROM node:14-alpine3.15 AS base
 
ENV INSTANCE="Development"
ENV PORT=5000

COPY package.json package.json
COPY package-lock.json package-lock.json
COPY ./ ./

RUN apk add --no-cache python2 make g++ && npm install

CMD ["npm", "run", "start"]