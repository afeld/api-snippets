FROM twiliodeved/api-snippets-base

# TODO: figure out a way to do run tests without root user
USER root

ENV RUN_ENV=test

COPY . /src

WORKDIR /src

RUN pip install yapf flake8

RUN chown -R root /.virtualenvs

RUN /bin/bash --login -c "rvm gemset create api-snippets && rvm use ruby-2.4.1@api-snippets --default && gem install bundler json colorize nokogiri rubocop"

RUN /bin/bash --login -c "make install_dependencies"

RUN make start && \
    make run_tests