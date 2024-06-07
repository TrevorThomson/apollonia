
FROM node:latest

WORKDIR /app

ADD package*.json ./
RUN npm install

ADD app.js ./
ADD bin ./bin/
ADD public ./public/
ADD routes ./routes/
ADD views ./views/

EXPOSE 5050

CMD [ "node", "bin/www" ]
