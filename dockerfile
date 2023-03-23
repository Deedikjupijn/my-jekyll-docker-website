# Create a Jekyll container from a Ruby Alpine image

# At a minimum, use Ruby 2.5 or later
FROM ruby:2.7-alpine

# add the Jekyll dependencies to alpine

RUN apk update
RUN apk add --no-cache build-base gcc cmake git

# Update the ruby bundler and install jeckyll
RUN gem update bundler && gem install jekyll -v 3.9.3