FROM ruby:2.3-alpine

RUN gem install mini-smtp-server
RUN gem install gserver

ADD server.rb server.rb

CMD ["ruby", "server.rb"]
