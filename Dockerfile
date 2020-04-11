 FROM andrius/alpine-ruby:latest

WORKDIR /usr/myblogger/

COPY ./Gemfile .

RUN ls

RUN bundle install

# Inform Docker that the container is listening on the specified port at runtime.
EXPOSE 2320

# Run the specified command within the container.
CMD ["shotgun", "-o", "0.0.0.0", "-p", "2320"]


