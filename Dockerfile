FROM ubuntu

RUN apt-get update; apt-get -y upgrade; apt-get clean

RUN apt-get install -y git curl; apt-get clean
RUN apt-get install -y build-essential libssl-dev; apt-get clean

RUN git clone git://github.com/sstephenson/rbenv.git /usr/local/rbenv
RUN mkdir -p /usr/local/{rbenv,shims}
RUN git clone git://github.com/sstephenson/ruby-build.git /usr/local/rbenv/plugins/ruby-build
RUN echo 'export RBENV_ROOT="/usr/local/rbenv"' >> /etc/profile.d/rbenv.sh
RUN echo 'export PATH="${RBENV_ROOT}/bin:${PATH}"' >> /etc/profile.d/rbenv.sh
RUN echo 'eval "$(rbenv init -)"' >> /etc/profile.d/rbenv.sh
