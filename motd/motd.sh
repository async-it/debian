#!/bin/sh

# Async IT Sàrl - Jonas Sauge

#V1.0: Initial Release
#V1.1: prevent copy to throw error if file does not exist

wget -qO /etc/update-motd.d/01-async https://raw.githubusercontent.com/async-it/debian/refs/heads/main/motd/01-async
chmod +x /etc/update-motd.d/01-async
[[ -e /etc/motd ]] && cp /etc/motd /etc/motd.bck && rm -rf /etc/motd
rm -rf /etc/update-motd.d/10-uname
