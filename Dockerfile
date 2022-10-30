FROM owncloudci/nodejs:latest
RUN cp / /app
WORKDIR /app
RUN npm install 
CMD npm run serve
