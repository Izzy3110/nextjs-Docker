# base
FROM node:latest AS base

ENV PORT 3000

RUN npm i -g npm

RUN mkdir /app && chown -R node:node /app

WORKDIR /app

ARG app_dir


COPY --chown=node:node $app_dir/package.json ./

RUN npm i

COPY $app_dir /app

RUN chown -R node:node /app/.next


# Building app
USER node

RUN npm run build
EXPOSE 3000

# Running the app
CMD "npm" "run" "dev"
