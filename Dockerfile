FROM node:alpine3.19

WORKDIR /app

COPY package.* .

RUN yarn install 

COPY prisma .

COPY . .

RUN yarn build

RUN yarn prisma generate

# RUN yarn migrate

EXPOSE 3000

ENTRYPOINT [ "yarn" ]

CMD [ "start" ]