#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
rails assets:precompile
rake assets:clean