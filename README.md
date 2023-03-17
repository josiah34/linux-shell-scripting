# linux-shell-scripting


<div align="center">
 <img src="https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white">
</div>
<div align="center">
<img src="https://www.techrepublic.com/wp-content/uploads/2021/08/tux.jpg" width="100" height="100">
</div>


<p align="center">
This is where I will put all my shell scripts. I intend to write new scripts here to improve my knowledge of scripting.

</p>



# Get-weather
This script prompts the user for their OpenWeatherMap API key and the name of a city. It then retrieves the current weather conditions and temperature for that city from the OpenWeatherMap API using the provided API key. The script checks if the `jq` command-line tool is installed and exits with an error message if it is not. 

The weather condition and temperature are extracted from the API response using `jq` and displayed to the user in the terminal. If the temperature is below 0 degrees Celsius, it is displayed in blue text; otherwise, it is displayed in yellow text. 

## Installation

To use this script, simply download it and make it executable using `chmod +x weather.sh`. You will need to have `jq` and `curl` installed on your system. If `jq` is not installed, the script will exit with an error message. 

## Usage

To run the script, use the command `./weather.sh` in the terminal and follow the prompts.

![get-weather](https://user-images.githubusercontent.com/25124463/225094546-9995b658-5279-4f93-b99c-fe28f07bdae7.gif)
