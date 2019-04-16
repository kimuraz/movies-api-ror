FROM ruby:2.6.1-alpine

RUN apk add --update \
  build-base \
  libxml2-dev \
  libxslt-dev \
  sqlite \
  sqlite-dev \
  sqlite-libs \
  && rm -rf /var/cache/apk/*

WORKDIR /opt/movies/

COPY . .

RUN gem update bundler

RUN bundle install --path vendor/bundle

RUN rake db:migrate

VOLUME ./db:/opt/movies/db/

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
