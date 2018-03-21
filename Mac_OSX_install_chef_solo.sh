#!/bin/bash

# uninstall old ruby versions
brew uninstall rbenv
brew uninstall ruby-build
brew uninstall ruby

# install new ruby versions
brew install rbenv ruby-build

# initializes rbenv
rbenv init
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source ~/.bash_profile

# install ruby 2.3.1
rbenv install 2.3.1
rbenv global 2.3.1
rbenv rehash

# install chef, knife-solo, berkshelf
gem install --no-ri --no-rdoc chef
gem install --no-ri --no-rdoc knife-solo
gem install --no-ri --no-rdoc berkshelf
