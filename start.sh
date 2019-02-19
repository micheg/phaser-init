#!/bin/bash

curl -O https://raw.githubusercontent.com/micheg/phaser-init/master/.gitignore
curl -O https://raw.githubusercontent.com/micheg/phaser-init/master/Makefile
curl -O https://raw.githubusercontent.com/micheg/phaser-init/master/index.html
curl -O https://raw.githubusercontent.com/micheg/phaser-init/master/init.sh
curl -O https://raw.githubusercontent.com/micheg/phaser-init/master/release.html

chmod +x init.sh
echo "#!/bin/bash" > ./build.sh
echo "make clean" >> ./build.sh
echo "make" >> ./build.sh