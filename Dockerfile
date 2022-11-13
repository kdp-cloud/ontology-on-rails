FROM ruby:2.7.5-buster

WORKDIR /usr/src/app

EXPOSE 3000

COPY . .

RUN bundle install

ENTRYPOINT ["rails", "server", "-b", "0.0.0.0"]