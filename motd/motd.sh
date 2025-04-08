#!/bin/sh

# Async IT Sàrl - Jonas Sauge

#V1.0: Initial Release

wget -qO /etc/update-motd.d/01-async https://github.com/Tontonjo/debian/raw/master/motd/01-async
chmod +x /etc/update-motd.d/01-async
cp /etc/motd /etc/motd.bck && rm -rf /etc/motd
rm -rf /etc/update-motd.d/10-uname
