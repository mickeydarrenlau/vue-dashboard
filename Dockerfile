FROM owncloudci/nodejs:latest
RUN ls
WORKDIR /app
RUN npm install 
CMD npm run serve
