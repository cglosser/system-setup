#!/bin/bash

# Add the release PGP keys:
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -

# Add the "stable" channel to your APT sources:
echo "deb https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list

# Update and install syncthing:
sudo apt-get update
sudo apt-get install syncthing

# Add syncthing to systemd startup: 
wget -P $TEMP_DIR https://raw.githubusercontent.com/syncthing/syncthing/master/etc/linux-systemd/system/syncthing%40.service
sudo mv "${TEMP_DIR}/syncthing@.service" /etc/systemd/system/syncthing@.service
sudo systemctl enable syncthing@connor.service
sudo systemctl start syncthing@connor.service
