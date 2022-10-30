FROM owncloudci/nodejs:latest
WORKDIR /
RUN npm install
CMD npm run serve
