#!/usr/bin/env sh

alias Apps="a"
alias Accessories="Tool"
alias Graphics="Graphic"
alias Multimedia="Audio"
alias Systems="System"
alias Settings="Setting"

kategori=$(cat /home/ahmad/.config/wofi/catgapps)

height=$(echo "$kategori" | wc -l)

selected=$(echo "$kategori" | wofi -l 1 -W 20% -d -i --lines "$height" -p "Switch to:" | awk '{print $1}')

wofi -Q "$selected" -l 1 -W 25% 
