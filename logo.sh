#!/bin/bash

clear

BLUE='\033[0;34m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
NC='\033[0m'

loading_dots() {
    echo -ne "${CYAN}Initializing"
    for ((i=0; i<3; i++)); do
        for ((j=0; j<3; j++)); do
            echo -ne "."
            sleep 0.2
        done
        echo -ne "\b\b\b   \b\b\b"
    done
    echo -ne "\r\033[K"
}

fade_in() {
    text=$1
    for ((i=0; i<${#text}; i++)); do
        echo -ne "${text:$i:1}"
        sleep 0.03
    done
}

loading_dots
clear

echo
echo -ne "${BLUE}"
fade_in "                W     W  III  N   N  GGGG  FFFFF  OOOOO"
echo
fade_in "                W     W   I   NN  N  G     F      O   O"
echo
fade_in "                W  W  W   I   N N N  G GG  FFFF   O   O"
echo
fade_in "                W W W W   I   N  NN  G  G  F      O   O"
echo
fade_in "                 W   W   III  N   N  GGGG  F      OOOOO"
echo -ne "${NC}"

echo -e "\n"
sleep 0.5
echo -ne "${WHITE}"
fade_in "Channel: https://t.me/infomindao  Group: https://t.me/WINGFO_DAO"
echo -ne "${NC}"

echo -ne "\n${BLUE}"
for ((i=0; i<80; i++)); do
    echo -ne "─"
    sleep 0.02
done
echo -ne "${NC}\n\n"