#!/bin/bash
set -e

cd ~/private-isu
git pull

cd webapp/ruby
source env.sh
bundle config set path 'vendor/bundle'
bundle install

sudo systemctl restart private-isu

echo "deployed: $(git rev-parse --short HEAD)"
