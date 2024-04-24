FROM node:alpine3.19

WORKDIR /app

COPY package.* .

RUN yarn install 

COPY . .

RUN yarn build

RUN yarn prisma generate

# RUN yarn migrate



ENTRYPOINT [ "yarn" ]

CMD [ "start" ]