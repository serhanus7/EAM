FROM ruby

WORKDIR /home/app

ENV PORT 3000

EXPOSE $PORT

RUN gem install rails bundler
RUN gem install rails
RUN apt-get update -qq && apt-get install -y nodejs

COPY core/Gemfile /home/app/
RUN bundle update && bundle install

#ENTRYPOINT [ "/bin/bash" ]
# ENTRYPOINT ["tail", "-f", "/dev/null"]
CMD ["rails", "server", "-b", "0.0.0.0"]