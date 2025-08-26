FROM node:18

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

ARG MONGODB_URL
ENV mongoDbUrl=$MONGODB_URL

EXPOSE 3000

CMD ["npm", "start"]
