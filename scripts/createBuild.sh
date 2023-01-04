#!/bin/bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
nvm install 16.0.0
. ~/.nvm/nvm.sh
node -e "console.log('Running Node.js ' + process.version)"
npm install --global yarn
yarn --version
cd /deploy
sudo yarn build

