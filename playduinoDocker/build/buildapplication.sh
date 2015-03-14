#!bin/bash

. ~/.bash_profile

#$1 needs to be the user ID
mkdir ~/arduinocode
cd ~/arduinocode
ino init -t blink
cp -r /srv/codefiles/$1.ino ~/arduinocode/src/sketch.ino
ino build
cp ~/arduinocode/.build/uno/firmware.hex /srv/codefiles/$1.hex
