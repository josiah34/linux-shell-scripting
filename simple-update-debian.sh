#!/bin/bash


# Set color variables
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'


# Reset color variable
NC='\033[0m'

if groups | grep -q '\bsudo\b'; then
	echo -e  "${GREEN}Privilege requirement satisfied.${NC}"
	echo "continuing....."
else
	echo -e "${RED}You must run this script as a sudoer.${NC}"
	exit 1
fi

## Updating existing packages 

echo "Step 1: Updating Packages"
sudo apt update 


## Check if command executed properly 

if [ $? -ne 0 ]; then 
	echo -e "${RED}Error updating packages${NC}"
	exit 1
else
	echo -e "${GREEN}Step 1: Updating Packages Completed${NC}"
fi

## Upgrading all packages installed on system 


echo "Step 2: Upgrading Packages"
sudo apt upgrade


if [ $? -ne 0 ]; then
        echo -e "${RED}Error upgrading packages${NC}"
        exit 1
else
        echo -e "${GREEN}Step 2: Upgrading Packages Completed${NC}"
fi


echo -e "${GREEN}Operation has completed succesfully. Have a nice day :)${NC}"







