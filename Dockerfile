From node:alpine3.19

WORKDIR /app

COPY package.json .

Run yarn install 

copy . .

Run yarn prisma generate

Run yarn build


ENTRYPOINT [ "yarn" ]

CMD [ "start" ]