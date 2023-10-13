#!/usr/bin/env bash

rute=$(dirname $(realpath $0))/..
source ${rute}/bin/ask_disk.sh # Modular, get the disk to operate on
ask_disk
log=${rute}/log/reset.log
exec 1>>$log
exec 2>&1

sudo sfdisk /dev/${disk} < ${rute}/lib/blank.sfdisk

exec 1> /dev/tty
printf "\033[38;5;83mDisk Cleared:\033[38;5;111m /dev/${disk}\033[0m\n"
