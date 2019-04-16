FROM ruby:2.5-alpine

WORKDIR /opt/movies/

COPY . .

RUN bundle install --path vendor/bundle

VOLUME ./db:/opt/movies/db/

CMD ['rails', 's']
