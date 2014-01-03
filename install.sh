#!/bin/sh

mkdir -p ~/bin
curl -Lo ~/bin/rmate https://raw.github.com/davidolrik/rmate-perl/master/rmate
chmod 755 ~/bin/rmate
ln -sf ~/bin/rmate ~/bin/mate
ln -sf ~/bin/rmate ~/bin/rsub
ln -sf ~/bin/rmate ~/bin/subl
