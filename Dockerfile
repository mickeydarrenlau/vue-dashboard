FROM node:latest AS builder

WORKDIR /
COPY . /app
WORKDIR /app
RUN npm install
RUN npm run build

FROM node:latest

WORKDIR /web
COPY --from=builder /app/dist /web/

EXPOSE 3000

CMD npx --yes http-server . -p 3000
