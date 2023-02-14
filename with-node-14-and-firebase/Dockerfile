FROM zenika/alpine-chrome AS base


FROM node:14.21.2-alpine AS node
FROM base
COPY --from=node /usr/lib /usr/lib
COPY --from=node /usr/local/share /usr/local/share
COPY --from=node /usr/local/lib /usr/local/lib
COPY --from=node /usr/local/include /usr/local/include
COPY --from=node /usr/local/bin /usr/local/bin

USER root
RUN apk add --no-cache \
      tini make gcc g++ python3 git yarn
RUN npm install --global firebase-tools pnpm
USER chrome
ENTRYPOINT ["tini", "--"]
