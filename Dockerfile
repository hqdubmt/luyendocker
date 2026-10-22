
FROM node:22.22.1

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE ${port}

CMD ["node", "index.js"]
