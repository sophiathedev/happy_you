#!/bin/sh
bundle install -j12 --retry 5
bundle exec sidekiq
