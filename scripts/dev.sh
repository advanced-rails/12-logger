#!/bin/bash

export RAILS_ENV=development
bundle install --with development test
rails db:create
rails db:migrate
rails server

