#!/bin/bash

TouchpadId=$(xinput list | grep Touchpad | grep -Eo 'id=[0-9]*' | grep -o '[0-9]*')


Output="Touchpad id $TouchpadId"

if [[ ( "$1" == 0 ) ]] ; then
	echo "$Output Disabled"
	xinput set-prop $TouchpadId "Device Enabled" 0
else
    xinput set-prop $TouchpadId "Device Enabled" 1
    echo "$Output Enabled"
fi

