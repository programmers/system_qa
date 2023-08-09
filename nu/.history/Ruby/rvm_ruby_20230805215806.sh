#!/bin/bash

curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl -sSL https://get.rvm.io | bash -s stable

source ~/.rvm/scripts/rvm

rvm install ruby --latest

rvm use ruby --default