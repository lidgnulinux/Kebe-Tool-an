#!/usr/bin/bash

windows=$(wlrctl toplevel list | awk '{print $1}' | tr -d :)

height=$(echo "$windows" | wc -l)

selected=$(echo "$windows" | wofi -d -i --lines "$height" -p "Switch to:" | awk '{print $1}')

wlrctl toplevel focus app_id:"$selected"
