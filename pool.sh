#!/usr/bin/env bash
sudo apt-get install git redis-server libboost1.55-all-dev cmake libssl-dev
git clone https://github.com/electroneropool/cryptonote-universal-pool-variant cn_pool 
cd cn_pool 
git pull origin master
sudo curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
echo 'Adding NVM to the Path, (tested on ubuntu 16.04, otherwise just restart)'
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "NVM_DIR/bash_completion"
echo 'DONE, NVM is ready for action'
nvm install 8.9.3
nvm use 8.9.3 && npm update && npm install
echo 'DONE, now start up the pool.'
