FROM owncloudci/nodejs:latest
WORKDIR /
RUN mkdir /app
COPY ./ /app
WORKDIR /app
RUN npm install && npm run build
WORKDIR /app/dist
CMD npx http-server . -p 3000


