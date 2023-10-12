FROM node:14 as base

WORKDIR /usr/src

COPY ["yarn.lock" ,"./yarn.lock"]
COPY ["turbo.json" ,"./turbo.json"]
COPY ["tsconfig.json" ,"./tsconfig.json"]
COPY ["package.json" ,"./package.json"]
COPY ["package-lock.json" ,"./package-lock.json"]
COPY [".npmrc" ,"./.npmrc"]
COPY [".gitignore" ,"./.gitignore"]

COPY ["apps/backend" ,"./apps/backend"]

COPY ["packages/zodschemas" ,"./packages/zodschemas"]

RUN yarn install

RUN yarn build

WORKDIR /usr/src/apps/backend

CMD [ "npm", "start" ]

EXPOSE 3010
