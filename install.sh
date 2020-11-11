#!/bin/bash

if [ $EUID != 0 ]; then
    sudo "$0" "$@"
    exit $?
fi

sudo ./sh/get.hassio.sh
sudo ./sh/get.motion-ai.sh
sudo ./sh/watch.sh
