FROM owncloudci/nodejs:latest
WORKDIR /
RUN mkdir /app
COPY ./ /app
WORKDIR /app
RUN npm install 
CMD npm run dev
