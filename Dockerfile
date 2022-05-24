FROM node:current-alpine3.15

WORKDIR /app

COPY package.json /app/package.json

RUN npm install

COPY . /app/

# give permission to read and write
RUN chown -R node /app/node_modules 

CMD ["npm", "start"]