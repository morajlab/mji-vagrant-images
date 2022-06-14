#!/usr/bin/env bash

# Install packer
if ! command -v packer &>/dev/null; then
  curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
  sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
  sudo apt-get update && sudo apt-get install packer
fi

# Install node modules
npm i

npx --no-install husky install