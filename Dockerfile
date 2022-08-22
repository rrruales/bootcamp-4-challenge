FROM ubuntu:18.04

RUN apt update -y && apt upgrade -y && apt install -y nodejs

RUN apt install -y npm 

WORKDIR /tmp/app

COPY . /tmp/app/

RUN npm install

EXPOSE 8888

CMD [ "npm", "start" ]