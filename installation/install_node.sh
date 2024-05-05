#!/bin/bash

# installs NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# download and install Node.js
nvm install 18

# verifies the right Node.js version is in the environment
node -v # should print `v18.20.2`

# verifies the right NPM version is in the environment
npm -v # should print `10.5.0`