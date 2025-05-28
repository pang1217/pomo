#!/bin/bash

if [ -z "$1" ] ; then
    let minutes=25
else 
    let minutes=$1
fi
echo "Waiting ${minutes} minutes"

let Timer=$minutes*60
say -v Daniel "Timer start!!"
sleep $Timer

echo "Timer is done!"
say -v Daniel "Timer is done!"

