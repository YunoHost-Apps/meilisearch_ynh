#!/bin/bash

latest="v0.10.1"

ynh_detect_arch(){
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

installation_mailisearch() {
    arch=$(ynh_detect_arch)
    url=""
    if [[ $arch = "amd64" ]]
    then
        url="meilisearch-linux-amd64"
    elif [ $arch = "armv8"]
        url="meilisearch-linux-armv8"
    else
        ynh_die --message="Your OS Architecture is not supported"
    fi
    curl https://github.com/meilisearch/MeiliSearch/releases/download/$latest/mailisearch-linux-$arch -O mailisearch
    mv mailisearch /usr/bin/mailisearch
}
