############################
# Final container
############################
FROM registry.cto.ai/official_images/node:2-12.13.1-stretch-slim

WORKDIR /ops

COPY package.json .
RUN npm install --production

COPY app.js .
COPY bin bin
COPY routes routes
COPY public public
COPY views views


