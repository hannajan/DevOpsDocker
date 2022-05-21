FROM ubuntu:20.04

WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y \
curl

COPY script.sh .

RUN chmod +x script.sh && \
  useradd -m appuser && \
rm -rf /var/lib/apt/lists/*

USER appuser

ENTRYPOINT [ "./script.sh" ] 