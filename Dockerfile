FROM public.ecr.aws/lambda/nodejs:16

WORKDIR /app

COPY package.json yarn.lock tsconfig.json ./

COPY src ./src

RUN npm install -g yarn

RUN yarn

RUN yarn build

RUN rm -rf src node_modules

RUN yarn --production

RUN ls -la

CMD ["/app/dist/index.handler"]