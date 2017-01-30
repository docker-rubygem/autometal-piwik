FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.0.3

RUN gem install autometal-piwik --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["piwik-console"]
CMD ["--help"]
