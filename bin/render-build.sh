#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
npm install --save-dev webpack-cli
bundle exec rails assets:precompile
bundle exec rails assets:clean