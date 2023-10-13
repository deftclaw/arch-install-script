#!/usr/bin/env bash

rute=$(dirname $(realpath $0))/..
source ${rute}/bin/ask_disk.sh # Modular, get the disk to operate on
ask_disk

leaf=${rute}/lib/arm32G.sfdisk # TODO: Make leaf selectable config
log=${rute}/log/prep_disk.log
exec 1>>$log
exec 2>&1

sudo sfdisk /dev/${disk} < $leaf
sudo mkfs.vfat -n BOOT /dev/${disk}1
sudo mkfs.ext4 -L ROOT /dev/${disk}2

exec 1> /dev/tty
printf "\033[38;5;83mDisk Prepared:\033[38;5;111m /dev/${disk}\033[0m\n"
