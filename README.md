# README

This project creates a simple Rest API to manage data for movies and its ratings (by comment).

## Docker

```
$ docker build . -t movies

$ docker run -p 3000:3000 -d movies:latest
```

## Without docker

```
$ bundle install --path vendor/bundle

$ rails db:migrate

$ rails s
```

