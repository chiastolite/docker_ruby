FROM ubuntu

MAINTAINER chiastolite "https://github.com/chiastolite"

RUN apt-get update; apt-get -y upgrade; apt-get clean

RUN apt-get install -y git curl; apt-get clean
RUN apt-get install -y build-essential libssl-dev; apt-get clean

RUN git clone git://github.com/sstephenson/ruby-build.git /usr/local/ruby-build

ENV RUBY_HOME /usr/local/ruby
ENV PATH /usr/local/ruby/bin:$PATH
