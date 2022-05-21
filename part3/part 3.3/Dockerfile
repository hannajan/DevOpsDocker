FROM golang:1.16

WORKDIR /usr/src/app

COPY . .

ENV REQUEST_ORIGIN=http://localhost:5001

RUN go build

RUN useradd -m appuser

RUN chown appuser /usr

USER appuser

CMD ["./server"]
