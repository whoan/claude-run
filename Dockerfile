FROM node:24-alpine

WORKDIR /app

COPY . /app

RUN npm install -g pnpm@latest-10
RUN pnpm install
ENTRYPOINT ["pnpm", "dev"]
