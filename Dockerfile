FROM owncloudci/nodejs:latest
RUN npm install
CMD npm run serve
