FROM node:14-alpine as build
WORKDIR /usr/share/app
RUN apk update
RUN apk add --update-cache git make g++ python3 zlib openssl apk-tools inotify-tools
ADD . ./
RUN npm cache verify
RUN npm install
RUN npm cache verify
# RUN npm run build # Used for ts apps
EXPOSE 3000
ENTRYPOINT [ "sh", "-c"]
CMD [ "npm start" ]