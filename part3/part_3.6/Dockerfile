FROM golang:1.16-alpine as build-stage

ENV REQUEST_ORIGIN=http://localhost:5001

WORKDIR /usr/src/app

COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build

FROM scratch

COPY --from=build-stage /usr/src/app/server /usr/src/app/server

WORKDIR /usr/src/app/

ENTRYPOINT ["/usr/src/app/server"]