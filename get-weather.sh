#!/bin/bash

# Colour variables 
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
ORANGE='\033[0;33m'

# Reset color variable
NC='\033[0m'





#ascii banner 
echo " ██████╗ ███████╗████████╗                                     
██╔════╝ ██╔════╝╚══██╔══╝                                     
██║  ███╗█████╗     ██║                                        
██║   ██║██╔══╝     ██║                                        
╚██████╔╝███████╗   ██║                                        
 ╚═════╝ ╚══════╝   ╚═╝                                        
                                                               
██╗    ██╗███████╗ █████╗ ████████╗██╗  ██╗███████╗██████╗     
██║    ██║██╔════╝██╔══██╗╚══██╔══╝██║  ██║██╔════╝██╔══██╗    
██║ █╗ ██║█████╗  ███████║   ██║   ███████║█████╗  ██████╔╝    
██║███╗██║██╔══╝  ██╔══██║   ██║   ██╔══██║██╔══╝  ██╔══██╗    
╚███╔███╔╝███████╗██║  ██║   ██║   ██║  ██║███████╗██║  ██║    
 ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝    
                                                               
"



# Check if jq is installed 
if which jq >/dev/null 2>&1; then
	echo -e "${GREEN}jq is installed${NC}"
	echo "continuing...."
else
	echo -e "${RED}jq is not installed${NC}"
	echo "Issue the command (sudo apt-get install jq) to install"
	exit 1
fi 


# Ask user for their API key
echo "What is your API Key?"
read API_KEY


# Ask user for the city name"

echo "Enter city"
read CITY



# Get weather conditions from OpenWeatherMap API
WEATHER=$(curl -s "http://api.openweathermap.org/data/2.5/weather?q=$CITY&units=metric&appid=$API_KEY")

# Extract weather condition and temperature from API response
CONDITION=$(echo "$WEATHER" | jq -r '.weather[0].main')
TEMP=$(echo "$WEATHER" | jq -r '.main.temp')

echo -e "\n\n\n\n\n"

echo -e "Current ${CITY} Weather:"
echo -e "Weather Condition is ${CONDITION}"

if [ $(echo "$TEMP < 0" | bc -l) -eq 1 ]; then
	echo -e "Temperature is ${BLUE}${TEMP}${NC}°C"
else
	echo -e "Temperature is ${YELLOW}${TEMP}${NC}°C"
fi







