#!/bin/bash

if [ -z "$1" ] ; then 
    let min=25
else 
    let min=$1
fi

echo "waiting ${min} minutes"
