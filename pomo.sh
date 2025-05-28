#!/bin/bash

# define color code
RED="\033[0;31m"
GREEN="\033[0;32m"
ENDCOLOR="\033[0m"

# set default to 25 minutes if no argument is passed
if [ -z "$1" ] ; then
    let minutes=25
else 
    let minutes=$1
fi

# start message 
echo -e "${GREEN}Set Timer ${minutes} minutes${ENDCOLOR}"
say -v Daniel "Set Timer ${minutes} minutes"
say -v Daniel "Timer start!!"

# Main loop
for i in $(seq 1 $minutes) 
do 
    sleep 60
    let rem=$minutes-i
    echo -ne "⏳ ${RED}${rem}${ENDCOLOR} ${GREEN}minutes remaining${ENDCOLOR}\\r"

    if ((rem%5==0 || rem<3 && rem>0)) ; then
        say -v Daniel "${rem} minutes left."
    fi

done
echo ""

echo -e "${GREEN}Timer is done!${ENDCOLOR}"
say -v Daniel "Timer is done!"

