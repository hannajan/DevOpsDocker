FROM golang:1.16-alpine

WORKDIR /usr/src/app

COPY . .

ENV REQUEST_ORIGIN=http://localhost:5001

RUN go build && \
  adduser -D appuser && \
  chown appuser /usr && \
  rm -rf go.mod && \
  rm -rf /var/lib/apt/lists/*

USER appuser

CMD ["./server"]