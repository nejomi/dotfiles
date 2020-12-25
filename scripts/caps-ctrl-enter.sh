#!/usr/bin/env bash

# reset
killall xcape

# assign capslock to escape and control when held
setxkbmap -option ctrl:swapcaps
xcape -e 'Control_L=Escape'

# First edition enter control double clicks sometimes

# assign return to control on press, return on release
#xmodmap -e 'keycode 36 = 0x1234'
#xmodmap -e 'add control = 0x1234'
#xmodmap -e 'keycode any = Return'
### make a fake return key (so we can map it with xcape)
#xcape -e '0x1234=Return'

# Second edition works but kinda slow

#xmodmap -e "remove Control = Control_R"
#xmodmap -e "keycode 0x69 = Return"
#xmodmap -e "keycode 0x24 = Control_R"
#xmodmap -e "add Control = Control_R"
#xcape -e "Control_R=Return"

# Enter becomes slow not really pog
