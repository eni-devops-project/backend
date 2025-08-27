FROM node:24 AS builder

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --production=false

COPY . .

FROM node:24

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --only=production

COPY --from=builder /usr/src/app ./

RUN chmod +x /usr/src/app/wait_db.sh

RUN apt-get update && apt-get install -y default-mysql-client

EXPOSE 3000

CMD ["./wait_db.sh", "npm", "run", "start"]
