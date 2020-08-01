FROM andrius/alpine-ruby:latest

MAINTAINER ARUN VIGNESH A

WORKDIR /usr/myblogger/

COPY ./blogger/Gemfile .

COPY ./blogger/src .

RUN bundle install

RUN apk add --no-cache --repository=http://dl-cdn.alpinelinux.org/alpine/v3.8/main/ nodejs=8.14.0-r0 npm

RUN npm install

ENV PATH=./node_modules/.bin:$PATH

RUN grunt

# Inform Docker that the container is listening on the specified port at runtime.
EXPOSE $PORT

# Run the specified command within the container.
CMD shotgun -o 0.0.0.0 -p $PORT


