## This repository contains minimal scripts for a generic phaser project.

---

### Usage:

- create a repo
- download start.sh via raw: bash <(curl -s https://raw.githubusercontent.com/micheg/phaser-init/master/start.sh)
- use init.sh

### Add src to git:

    git add src
    git commit -m'first import' src
    git push -u origin master

### Use a makefile to minify and merge js files, use:

    develop using index.html in src,
    fill in with:
    make clean
    make

### Release

The minified code will be in release.