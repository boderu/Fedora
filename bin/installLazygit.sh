#!/usr/bin/env bash

echo ; echo "Install LazyGit"

pushd $HOME

sudo dnf copr enable -y dejan/lazygit
sudo dnf install -y lazygit

popd

# EOF
