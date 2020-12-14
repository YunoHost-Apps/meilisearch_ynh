#!/bin/bash

latest="v0.17.0"

ynh_detect_arch() {
	local architecture
	if [ -n "$(uname -m | grep arm64)" ] || [ -n "$(uname -m | grep arm)" ]; then
		architecture="armv8"
	elif [ -n "$(uname -m | grep 64)" ]; then
		architecture="amd64"
	elif [ -n "$(uname -m | grep 86)" ]; then
		architecture="i386"
	elif [ -n "$(uname -m | grep arm)" ]; then
		architecture="arm"
	else
		architecture="unknown"
	fi
	echo $architecture
}
