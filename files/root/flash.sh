#!/bin/bash
umount /dev/mmcblk2p1
umount /dev/mmcblk2p2
ssh neil@192.168.4.2 cat "~/openwrt-docker/openwrt/bin/targets/sunxi/cortexa7/openwrt-sunxi-cortexa7-friendlyarm_nanopi-r1-ext4-sdcard.img.gz" | gunzip | dd of=/dev/mmcblk2 bs=1k
