#!/usr/bin/env bash

pushd $HOME

sudo dnf install -y 'dnf-command(copr)'
sudo dnf install -y dnf-plugins-core
sudo dnf copr enable -y deltacopy/darkly
sudo dnf copr enable -y mateogrgic/Bitwarden
sudo dnf copr enable -y rleh/arm-none-eabi-gdb
sudo dnf copr enable -y cboxdoerfer/fsearch
sudo dnf copr enable -y @kicad/kicad

echo ; echo "Update existing RPMs"
sudo dnf update -y


echo ; echo "Remove RPM groups"
if [ -e "$HOME/.fedora/rpmgroup-remove.conf" ]
then
	cat "$HOME/.fedora/rpmgroup-remove.conf" | grep -v '^#' | grep -v '^$' | \
	while read LINE
	do
		echo "Remove $LINE:"
		sudo dnf group remove -y $LINE
		echo
	done
fi

echo ; echo "Remove RPMs"
if [ -e "$HOME/.fedora/rpm-remove.conf" ]
then
	cat "$HOME/.fedora/rpm-remove.conf" | grep -v '^#' | grep -v '^$' | \
	while read LINE
	do
		echo "Remove $LINE:"
		sudo dnf remove -y $LINE
		echo
	done
fi

echo ; echo "Remove packages that are no longer required"
sudo dnf autoremove -y


echo ; echo "Install RPM groups"
if [ -e "$HOME/.fedora/rpmgroup-install.conf" ]
then
	cat "$HOME/.fedora/rpmgroup-install.conf" | grep -v '^#' | grep -v '^$' | \
	while read LINE
	do
		echo "Install $LINE:"
		sudo dnf group install -y "$LINE"
		echo
	done
fi

echo ; echo "Install RPMs"
if [ -e "$HOME/.fedora/rpm-install.conf" ]
then
	cat "$HOME/.fedora/rpm-install.conf" | grep -v '^#' | grep -v '^$' | \
	while read LINE
	do
		echo "Install $LINE:"
		sudo dnf install -y $LINE
		echo
	done
fi

popd

# EOF
