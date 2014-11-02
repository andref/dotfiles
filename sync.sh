#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")"
git pull origin master
rsync --exclude-from sync-exclude.txt -avh --no-perms . ~
source ~/.bash_profile
