FROM node:16.3.0

WORKDIR /app/

COPY ./package* ./

RUN npm ci

COPY ./src/ ./src/

CMD ["npm", "start"]
