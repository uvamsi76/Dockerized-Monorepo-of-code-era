FROM node:latest

WORKDIR /usr/src

COPY ["yarn.lock" ,"./yarn.lock"]
COPY ["turbo.json" ,"./turbo.json"]
COPY ["tsconfig.json" ,"./tsconfig.json"]
COPY ["package.json" ,"./package.json"]
COPY ["package-lock.json" ,"./package-lock.json"]
COPY [".npmrc" ,"./.npmrc"]
COPY [".gitignore" ,"./.gitignore"]

COPY ["apps/frontend-nextapp" ,"./apps/frontend-nextapp"]

COPY ["packages/recoiatoms" ,"./packages/recoiatoms"]
COPY ["packages/schemas" ,"./packages/schemas"]
COPY ["packages/ui" ,"./packages/ui"]
COPY ["packages/util" ,"./packages/util"]

RUN yarn install

RUN yarn build

WORKDIR /usr/src/apps/backend

CMD [ "npm", "start" ]

EXPOSE 3000
