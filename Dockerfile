############################
# Final container
############################
FROM registry.cto.ai/official_images/node:2-12.13.1-stretch-slim

WORKDIR /ops

ADD package.json .
ADD app.js .
ADD bin bin
ADD routes routes
ADD public public
ADD views views

RUN npm install --production

