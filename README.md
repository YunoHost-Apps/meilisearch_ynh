# Meilisearch app for YunoHost

[![Integration level](https://dash.yunohost.org/integration/meilisearch.svg)](https://dash.yunohost.org/appci/app/meilisearch)
[![Install Meilisearch with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=meilisearch)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allow you to install Meilisearch quickly and simply on a YunoHost server.
If you don't have YunoHost, please see [here](https://yunohost.org/#/install) to know how to install and enjoy it.*

## Overview

Meilisearch is an opensource next generation search API.


**Shipped version:** 0.10.1

## Screenshots

![Meilisearch Demo](movies-web-demo.gif)

## Configuration

At the installation, be sure to set up an API key to secure your API.


#### Multi-users support

It's an API and there is no authentification, without API key.

#### Supported architectures

* x86-64b - [![Build Status](https://ci-apps.yunohost.org/ci/logs/meilisearch%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/meilisearch/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/meilisearch%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/meilisearch/)

## Links

 * Report a bug: https://github.com/frju365/meilisearch_ynh/issues
 * App website: https://www.meilisearch.com/
 * Upstream app repository: https://github.com/meilisearch/MeiliSearch
 * YunoHost website: https://yunohost.org/

---

Developers info
----------------

**Only if you want to use a testing branch for coding, instead of merging directly into master.**
Please do your pull request to the [testing branch](https://github.com/frju365/meilisearch_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/frju365/meilisearch_ynh/tree/testing --debug
or
sudo yunohost app upgrade meilisearch -u https://github.com/frju365/meilisearch_ynh/tree/testing --debug
```
