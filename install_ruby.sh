#!/bin/bash

set -e

rvm autolibs disable
rvm install 2.4.2
rvm --default use 2.4.2
gem install bundler
gem install rails