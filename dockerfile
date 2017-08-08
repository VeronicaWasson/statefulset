FROM node:8.0.0

WORKDIR /app
EXPOSE 80

COPY package.json /app/
RUN npm install --production

COPY server.js /app/server.js

CMD ["node", "server.js"]
