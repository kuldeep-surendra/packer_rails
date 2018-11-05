#!/bin/bash

echo "$PASSWORD" | sudo -S apt-get update

sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm5 libgdbm-dev sqlite3 libsqlite3-dev nodejs -y


curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl -sSL https://get.rvm.io | bash -s stable
echo 'gem: --no-document' >> ~/.gemrc