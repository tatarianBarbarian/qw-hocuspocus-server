FROM node:20-alpine

# RUN apk add --no-cache  chromium

# create destination directory
RUN mkdir -p /usr/src/boilerplate && chmod -R 777 /usr/src/boilerplate
WORKDIR /usr/src/hocuspocus-serer

# install app dependencies
# Copy package.json and pnpm-lock.yaml to the working directory
# COPY package.json pnpm-lock.yaml yarn.lock ./
COPY package.json package-lock.json ./

# Install application dependencies
RUN npm install 

# Install PM2 globally
RUN npm install -g pm2

# Copying all the files in our project
COPY . .

RUN NODE_OPTIONS=--max_old_space_size=2048 npm run build
# RUN NODE_OPTIONS=--max_old_space_size=1024 yarn run postinstall


EXPOSE 1234

# start app
CMD [ "pm2-runtime", "ecosystem.config.js" ]
