#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
rake db:migrate
rails assets:precompile
rake assets:clean