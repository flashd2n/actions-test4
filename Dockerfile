FROM --platform=linux/amd64 node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.izska2t.mongodb.net
ENV MONGODB_USERNAME flashio
ENV MONGODB_PASSWORD lino89

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]