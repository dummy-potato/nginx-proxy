#!/bin/bash

#####################################################
#####################################################
# HOW TO USE
# 
# $ ./boot.sh
# 
# Can also be used as cronjob to be run after every server reboot
# $ crontab -e
# type `@reboot DIRECTORY/boot.sh`, wherein the `DIRECTORY` is the location to this script
#
#####################################################
#####################################################
# Reset
RESET='\033[0m';           # Color Reset
# Regular Colors
BLACK='\033[0;30m';        # Black
RED='\033[0;31m';          # Red
GREEN='\033[0;32m';        # Green
YELLOW='\033[0;33m';       # Yellow
BLUE='\033[0;34m';         # Blue
PURPLE='\033[0;35m';       # Purple
WHITE='\033[0;37m';        # White

# boots proxy servers
__boot_proxy() {
    echo -e "${BLUE}Starting config proxies (nginx-proxy, acme-companion) ..........${RESET}";
    docker-compose up -d;
}
__boot_proxy;