#!/usr/bin/env bash

echo ; echo "Frontplattendesigner"

pushd $HOME

curl -s --insecure https://www.schaeffer-ag.de/frontplatten-designer#download | \
	grep -E -o 'https[^[:blank:]]*-amd64\.rpm' | \
	sort -V | \
	tail --lines=1 | \
	wget -i -
sudo dnf install -y ./FrontDesign*amd64.rpm
rm -fv ./FrontDesign*amd64.rpm

popd

# EOF
