#!/bin/bash -eux

# Install ruby and rails
sudo apt-get install -y build-essential git-core curl zlib1g-dev libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties make libv8-dev libqt4-dev

# Install rbenv
git clone git://github.com/sstephenson/rbenv.git ~/.rbenv

echo $PATH

# Add rbenv paths and eval to .bashrc and .bash_profile (needed in login/non-login shells)
echo -e 'export PATH="./bin:$HOME/.rbenv/bin:$PATH"\neval "$(rbenv init -)"' | tee ~/.bash_profile ~/.bashrc
. ~/.bash_profile

echo $PATH

# Install rbenv plugns
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
git clone git://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash
git clone git://github.com/rkh/rbenv-update.git ~/.rbenv/plugins/rbenv-update
git clone git://github.com/dcarley/rbenv-sudo.git ~/.rbenv/plugins/rbenv-sudo

# Install and set default ruby version
cd ~/.rbenv
#rbenv install --keep 1.9.3-p547
#rbenv install --keep 2.0.0-p481
#rbenv install --keep 2.1.0
#rbenv install --keep 2.1.1
#rbenv install --keep 2.1.2
rbenv install --keep 2.4.2
rbenv global 2.4.2
ruby -v
echo -e "install: --no-ri --no-rdoc\nupdate: --no-ri --no-rdoc" > ~/.gemrc

# Install bundler
gem install bundler