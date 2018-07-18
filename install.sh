#!/bin/bash

# Exit script if a command fails
set -e

command_exists() {
 type "$1" > /dev/null;
}

# Install NPM if it does not exist
if ! command_exists npm; then
    apt-get update;
    apt-get install npm;
fi

# Install Require js if it does not exist
if ! command_exists requirejs; then
    apt-get update;
    npm install -g requirejs;
fi

php bin/magento module:enable SamJ_Bundle;
php bin/magento setup:upgrade;
php bin/magento cache:clean;