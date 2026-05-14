#!/usr/bin/env bash

echo ; echo "Segger j-link & Ozone Debugger"

if [ -f "$HOME/Nextcloud/Apps/Fedora/Segger/JLink_Linux_V942_x86_64.rpm" ]
then
	sudo dnf remove -y jlink
	sudo dnf install -y $HOME/Nextcloud/Apps/Fedora/Segger/JLink_Linux_V942_x86_64.rpm
else
	echo "$HOME/Nextcloud/Apps/Fedora/Segger/JLink_Linux_V942_x86_64.rpm not available"
fi

echo ; echo "Segger Ozone Debugger"
if [ -f "$HOME/Nextcloud/Apps/Fedora/Segger/Ozone_Linux_V340i_x86_64.rpm" ]
then
	sudo dnf install -y $HOME/Nextcloud/Apps/Fedora/Segger/Ozone_Linux_V340i_x86_64.rpm
else
	echo "$HOME/Nextcloud/Apps/Fedora/Segger/Ozone_Linux_V340i_x86_64.rpm not available"
fi

# EOF
