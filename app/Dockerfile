# Originally from https://towardsdatascience.com/how-to-dockerize-an-existing-sinatra-application-3a6943d7a428

FROM ruby:3.0.2

ENV APP_ENV dev

ADD . /hello-sinatra
WORKDIR /hello-sinatra

#RUN gem install bundler
RUN bundle update --bundler
RUN bundle install
#RUN gem update --system

# for debug
#RUN echo "Showing for debug if APP_ENV makes it to env : APP_ENV=$APP_ENV"
#RUN env
#RUN env APP_ENV
#EXPOSE 4567
EXPOSE 8080

# trying to understand how to put ENV into the docker container :)
# Maybe at docker run :)
CMD ["ENV=blah123", "rackup", "--host", "0.0.0.0", "-p", "8080"]
