FROM node:lts
WORKDIR moi-vue
#copy's package.json file and installs deps
COPY package.json ./
RUN npm i -g npm yarn nodemon @vue/cli --quiet
RUN yarn
#bundles source
COPY . .