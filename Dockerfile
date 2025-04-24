FROM node:20-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

RUN npm run tailwind:build

EXPOSE 3000

CMD ["npx", "live-server", "--port=3000", "--host=0.0.0.0"]
