FROM ruby:2.7-alpine

WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle config set system 'true'
RUN bundle install

ADD . /app
# [DEPRECATED] The `--system` flag is deprecated because it relies on being remembered across bundler invocations, which bundler will no longer do in future versions. Instead please use `bundle config set system 'true'`, and stop using this flag
RUN bundle install

EXPOSE 8080

# If you do not have a bin/web wrapper file, create one or update this command
RUN chmod a+x bin/*
CMD ["bin/web"]
