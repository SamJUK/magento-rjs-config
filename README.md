# Magento 2 Require JS Optimizer Helper Stuff

## Originally developed by Antonkril
https://github.com/antonkril/magento-rjs-config/

A small collection of scripts & a module to help with deployment / use of require js optimizer to bundle javascript files in magento 2


## Usage
- Navigation to your magento root, eg: `cd /var/www/html/magento2`
- Clone these files: `git clone 'https://github.com/SamJUK/magento-rjs-config.git'`
- Run the installer: `sh install.sh`
- Run the bundler: `sh build.sh`
- Go play pog with all the time and hair you saved

---
## Tested
- Ubuntu 18.04 LTS - bionic @ Magento 2.2.6-dev Clean install

## Errors / Issues / Solutions
404's on static content
- Apache: Add a Rewritebase to `pub/static/.htaccess` @ line: 16 https://magento.stackexchange.com/a/150663
- Nginx: https://magento.stackexchange.com/a/150532
- Disable static file signing -https://magento.stackexchange.com/a/151513

---

## License
This project is licensed under the terms of the MIT license.

## Disclaimer of Warranties and Limitation of Liability
The contents of this repository are offered on an as-is and as-available basis and the authors make no representations or warranties of any kind concerning the contents, whether express, implied, statutory, or other. This includes, without limitation, warranties of title, merchantability, fitness for a particular purpose, non-infringement, absence of latent or other defects, accuracy, or the presence or absence of errors, whether or not known or discoverable.

To the extent possible, in no event will the authors be liable on any legal theory (including, without limitation, negligence) or otherwise for any direct, special, indirect, incidental, consequential, punitive, exemplary, or other losses, costs, expenses, or damages arising out of the use of the contents, even if the the authors have been advised of the possibility of such losses, costs, expenses, or damages.

The disclaimer of warranties and limitation of liability provided above shall be interpreted in a manner that, to the extent possible, most closely approximates an absolute disclaimer and waiver of all liability.