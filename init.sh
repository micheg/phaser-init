#!/bin/bash

mkdir -p src/js
mkdir -p src/lib
mkdir bin
mkdir tmp

curl https://raw.githubusercontent.com/photonstorm/phaser/master/dist/phaser-arcade-physics.min.js --output src/lib/phaser-arcade-physics.min.js
curl https://dl.google.com/closure-compiler/compiler-20190121.zip --output compiler-20190121.zip
unzip -d tmp compiler-20190121.zip
cp ./tmp/closure-compiler-v20190121.jar ./bin
rm -rf ./tmp
rm -rf compiler-20190121.zip
cp ./index.html ./src/
