FROM ruby:2.7.1-slim-buster

WORKDIR /work

RUN apt-get update && apt-get install build-essential -y
RUN gem install sqlint

COPY run.sh .
RUN chmod 777 run.sh

CMD ./run.sh