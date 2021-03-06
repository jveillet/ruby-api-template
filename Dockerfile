FROM ruby:2.6.6

# Environment variables
ENV DEBIAN_FRONTEND noninteractive
ENV BUNDLE_JOBS=10
ENV BUNDLER_VERSION=2.1.4

RUN apt-get update -y \
    && apt-get install -y \
    apt-transport-https

RUN gem install bundler -v 2.1.4

RUN mkdir -p /app

WORKDIR /app

COPY Gemfile* ./

RUN bundle config
RUN bundle install --jobs 4 --retry 3

COPY . ./

EXPOSE 3000

CMD ["bundle", "exec ", "puma", "-p", "echo ${PORT}"]
