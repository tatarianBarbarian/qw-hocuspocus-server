FROM node:20-alpine

# Ireate destination directory
RUN mkdir -p /usr/src/hocuspocus-server && chmod -R 777 /usr/src/hocuspocus-server
WORKDIR /usr/src/hocuspocus-server

# Install app dependencies

COPY package.json package-lock.json ./

# Install application dependencies
RUN npm install 

# Install PM2 globally
RUN npm install -g pm2

# Copying all the files in our project
COPY . .

EXPOSE 1234

# start app
CMD [ "pm2-runtime", "ecosystem.config.js" ]
