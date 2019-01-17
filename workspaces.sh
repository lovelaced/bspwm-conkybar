#!/bin/bash
# workspaces.sh

# starting at 2 because the first returned isn't a workspace
# however many workspaces you have; I use 10
for i in {2..8}
do

# query bspc wm for the status of the workspaces
SPACE=$(bspc wm --get-status | cut -d ":" -f $i)
	if [[ "$SPACE" == *u* ]] # check for urgency
	then
		echo -ne "\${color4}" # urgent workspace color
	elif [[ "$SPACE" == *O* ]] # check for focused workspace
	then
		echo -ne "\${color1}" # active workspace color
	elif [[ "$SPACE" == *o* ]]
	then
		echo -ne "\${color3}" # unfocused, non-free desktop color
	else
		echo -ne "\${color2}" # free desktop color
	fi
echo -ne "${SPACE:1} " # print workspaces to conky
done
