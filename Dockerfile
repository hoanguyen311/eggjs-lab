FROM node:8
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package*.json /usr/src/app/
RUN npm install
COPY . /usr/src/app/
RUN npm run tsc
EXPOSE 7001
CMD ["npm", "start"]