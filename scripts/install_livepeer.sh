#!/bin/sh
#Aulivepeer: @kanr

if [ ! -e "$GOPATH/src/github.com/livepeer" ]; then
  go get github.com/livepeer/go-livepeer/cmd/livepeer
  cd $GOPATH/src/github.com/livepeer/go-livepeer/cmd/livepeer
  echo "isntalling livepeer"
  ./install.sh
  echo "installing ffmpeg"
  ./install_ffmpeg.sh
  #echo "DEP ensuring ..."
  #dep ensure
  #make all --quiet
  #echo | tree -L 4
  #echo "livepeer Installed"
  #sleep 3s
else
  echo "livepeer already installed"
fi