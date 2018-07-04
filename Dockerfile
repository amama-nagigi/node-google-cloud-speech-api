FROM node:8.11.3

# install SOX
RUN apt-get update && apt-get install -y sox libsox-fmt-all

# copy source code
COPY src /src
COPY lpcm16-index.js /src/node_modules/node-record-lpcm16/index.js

# install modules
WORKDIR /src
RUN npm install

# execute
CMD [ "node", "index.js"]