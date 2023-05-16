FROM zenika/alpine-chrome:with-node

# Add firebase
USER root
RUN apk add --no-cache \
      tini make gcc g++ python3 git yarn
RUN npm install --global firebase-tools pnpm
USER chrome

# Add playwright
ENV PLAYWRIGHT_SKIP_BROWSER_DOWNLOAD 1
ENV PLAYWRIGHT_CHROMIUM_EXECUTABLE_PATH=/usr/bin/chromium-browser
WORKDIR /usr/src/app
COPY --chown=chrome package.json package-lock.json ./
RUN npm install
COPY --chown=chrome . ./
ENTRYPOINT ["tini", "--"]
