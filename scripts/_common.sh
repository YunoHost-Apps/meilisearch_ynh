#!/bin/bash

latest="v0.10.1"

installation_mailisearch() {
    arch=$()
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
