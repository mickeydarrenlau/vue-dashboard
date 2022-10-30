FROM owncloudci/nodejs:latest
RUN cp -r / /app
WORKDIR /app
RUN npm install 
CMD npm run serve
