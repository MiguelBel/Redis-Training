FROM ruby:2.7.2

RUN gem install sinatra
RUN gem install redis

WORKDIR /opt/app

CMD ruby app.rb -p 4567 -o 0.0.0.0
