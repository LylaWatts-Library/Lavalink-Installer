#!/bin/bash

bold=$(echo -en "\e[1m")
nc=$(echo -en "\e[0m")
lightblue=$(echo -en "\e[94m")
lightgreen=$(echo -en "\e[92m")
clear

echo "
${bold}${lightgreen}========================================================================                            
${bold}${lightgreen}  Lavalink Server                                                                                                 
${bold}${lightgreen}========================================================================
 "
 
echo "${nc}"

if [[ -f "./installed" ]]; 

then
    echo "Starting the server"
    sleep 1
    java -jar Lavalink.jar

else

    echo "Downloading files for Lavalink Server"
    sleep 1
    touch installed
    wget https://github.com/freyacodes/Lavalink/releases/download/3.4/Lavalink.jar
    wget application.yml https://raw.githubusercontent.com/afnan007a/Lavalink-MusicBot/main/application.yml
    java -jar Lavalink.jar

fi
