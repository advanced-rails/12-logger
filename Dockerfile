# PRODUCTION DOCKERFILE

FROM ruby:2.4.1

RUN gem install rails

RUN cd /usr/local                                                        \
    && wget https://nodejs.org/dist/v8.4.0/node-v8.4.0-linux-x64.tar.xz  \
    && tar -xvf node-v8.4.0-linux-x64.tar.xz                             \
    && mv node-v8.4.0-linux-x64 node                                     \
    && rm node-v8.4.0-linux-x64.tar.xz

ENV PATH "/usr/local/node/bin:$PATH"
ENV PORT "3333"
ENV HOST "0.0.0.0"
ENV RAILS_ENV "production"
ENV RAILS_SERVE_STATIC_FILES "true"
# rails secret
ENV SECRET_KEY_BASE "d5d2e920d68aad333854aa06994e1a695e827456dca22bde130eca0643c87b0492c3f79ee0ea466752e44d9334d289f4f9d85429a30afa5d9231ada5180ff656"

RUN npm i -g yarn
COPY . /usr/src/app
WORKDIR /usr/src/app

RUN bundle install --without development test

# API does not have assets
# RUN rails assets:clobber && rails assets:precompile

EXPOSE 3333
CMD ["rails", "server"]

