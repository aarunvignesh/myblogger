FROM andrius/alpine-ruby:latest

MAINTAINER ARUN VIGNESH A

WORKDIR /usr/myblogger/

ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION v8.9.4
ENV NVM_SYMLINK /usr/local/node

COPY ./blogger/Gemfile .

RUN bundle install

RUN apk add --no-cache --repository=http://dl-cdn.alpinelinux.org/alpine/v3.8/main/ nodejs=8.14.0-r0 npm

RUN npm install

ENV PATH=./node_modules/.bin:$PATH

# Inform Docker that the container is listening on the specified port at runtime.
EXPOSE 2320

# Run the specified command within the container.
CMD ["shotgun", "-o", "0.0.0.0", "-p", "2320"]


