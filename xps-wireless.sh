#!/bin/bash

cd $TEMP_DIR

sudo apt install firmware-atheros 
wget https://github.com/kvalo/ath10k-firmware/archive/master.zip
unzip master.zip

FIRMWARE_DIR="/lib/firmware/ath10k/QCA6174"

mv ${FIRMWARE_DIR} "${FIRMWARE_DIR}.old"
sudo cp -r "${TEMP_DIR}/ath10k-firmware-master/$(basename $FIRMWARE_DIR)" $FIRMWARE_DIR
cd "${FIRMWARE_DIR}/hw3.0"
sudo mv firmware-4.bin_WLAN.RM.2.0-00180-QCARMSWPZ-1 firmware-4.bin
