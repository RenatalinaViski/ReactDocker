FROM node:10-alpine

WORKDIR /usr/app

COPY /build /usr/app

RUN yarn global add serve

EXPOSE 5000

CMD ["serve", "-s", "build"]