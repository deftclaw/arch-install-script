#!/usr/bin/env bash

function ask_disk() {
	lsblk -o LABEL,NAME,SIZE,TYPE,FSTYPE,MOUNTPOINTS
	printf "\033[38;5;77mChoose a disk: (eg. sda) \033[0m"
	read
	
	export disk=$(printf $REPLY|sed 's/\/dev\///')
}
