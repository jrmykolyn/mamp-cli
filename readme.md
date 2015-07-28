# mamp-cli

### What is it?

A command line interface for working with [MAMP](https://www.mamp.info/de/). It can start and stop your MAMP, but also easily switch the document root so that you can switch projects easily by using a favorite list.

### Warning

Please __backup your httpd.conf__ file of your MAMP before using this script. It can be found here:

    /Applications/MAMP/conf/apache/httpd.conf

### Requirements

- MAMP (tested with 3.0.7.3)
- Node.js
- Coffee-Script ($ npm install -g coffee-script)

### How it works

- it uses the MAMP bash scripts in /Applications/MAMP/bin to start and stop the server
- it overwrites the httpd.conf to change the document root
- it creates a ~/.mamp-cli file to track a favorite list of document roots

### Installation

1. clone this project
2. $ npm run setup

The setup script will install all needed modules and __create a symlink__ to the script under ~/bin/mamp .

### Usage

Use this to print the help:

    $ mamp

### Available Commands

    $ mamp start
    // start the server

    $ mamp stop
    // stop the server

    $ mamp list
    // list your favorite shortcuts

    $ mamp add <shortcut>
    // add the current directory to your favorites

    $ mamp remove <shortcut>
    // remove a shortcut

    $ mamp switch <shortcut>
    // switch the document root to the one of your shortcuts

### License

See file LICENSE