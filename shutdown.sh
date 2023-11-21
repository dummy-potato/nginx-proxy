#!/bin/bash

#####################################################
#####################################################
# HOW TO USE
# 
# $ ./shutdown.sh
# 
#####################################################
#####################################################
# Reset
RESET='\033[0m';           # Text Reset
# Regular Colors
BLACK='\033[0;30m';        # Black
RED='\033[0;31m';          # Red
GREEN='\033[0;32m';        # Green
YELLOW='\033[0;33m';       # Yellow
BLUE='\033[0;34m';         # Blue
PURPLE='\033[0;35m';       # Purple
WHITE='\033[0;37m';        # White

# stops and removes proxy containers
__shutdown_proxy() {
    echo -e "${BLUE}Shutting down proxies (nginx-proxy, acme-companion) ..........${RESET}";
    docker-compose down;
}

__shutdown_proxy;