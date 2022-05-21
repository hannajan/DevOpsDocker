FROM node:16

WORKDIR /usr/src/app

COPY . .

RUN npm install && \
  npm run build && \
  npm install -g serve && \
  useradd -m appuser && \
  chown appuser /usr && \
  rm -rf package.json && \
  rm -rf package-lock.json && \
  rm -rf /var/lib/apt/lists/*

USER appuser

CMD ["serve", "-s", "-l", "5001", "build"]