FROM ruby:3.2-alpine
RUN apk add --no-cache \
    build-base \
    ruby-nokogiri && \
    gem install rspec capybara selenium-webdriver
USER nobody
ENTRYPOINT ["rspec"]
