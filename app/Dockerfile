FROM ruby:3.0.2

ADD . /hello-sinatra
WORKDIR /hello-sinatra

RUN bundle update --bundler
RUN bundle install

# Try: bundle exec bundle install

#EXPOSE 4567
EXPOSE 8080

CMD ["bundle", "exec", "rackup", "-p", "8080"]
