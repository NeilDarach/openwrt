#!/bin/bash
cp config.buildinfo .config
make defconfig
make menuconfig
scripts/diffconfig.sh .config > config.base
cp config.base .config
cat config.arde >> .config
make defconfig
