#!/bin/bash

export RAILS_ENV=test
bundle install --with development test
rspec

