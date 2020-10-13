#!/bin/bash
# Must be using libinput and requires xinput
side_check=$(xinput list-props 'Logitech USB Trackball' | grep "286" | grep -o "[89]$")
if [ $side_check == '8' ];then
 swap_primary_button=$(xinput set-button-map 'Logitech USB Trackball' 3 2 1 ; xinput set-prop 'Logitech USB Trackball' 286 9)
 echo -n "$swap_primary_button"
 echo -e "\n\t<---Set to left handed.\n"
else
 swap_primary_button=$(xinput set-button-map 'Logitech USB Trackball' 1 2 3 ; xinput set-prop 'Logitech USB Trackball' 286 8)
 echo -n "$swap_primary_button"
 echo -e "\n\tSet to right handed.--->\n"
fi
