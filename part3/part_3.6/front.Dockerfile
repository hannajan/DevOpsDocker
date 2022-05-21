FROM node:16-alpine as build-stage

WORKDIR /usr/src/app

COPY . .

RUN npm install && \
  npm run build

FROM node:16-alpine

WORKDIR /usr/src/app

COPY --from=build-stage /usr/src/app/build /usr/src/app/build

RUN npm install -g serve && \
  adduser -D appuser && \
  chown appuser /usr && \
  rm -rf /var/lib/apt/lists/*

USER appuser

CMD ["serve", "-s", "-l", "5001", "build"]