FROM node
RUN mkdir /website
RUN mkdir /website/views
COPY package.json /website
COPY server.js /website
COPY views /website/views
WORKDIR /website
RUN npm install
CMD ["npm", "start"]
