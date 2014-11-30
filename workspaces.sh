#!/bin/bash
# workspaces.sh

for i in {2..11}
do
SPACE=$(bspc control --get-status | cut -d ":" -f $i)
	if [[ "$SPACE" == *u* ]] #urgent desktop color
	then
		echo -ne "\${color4}" 
	elif [[ "$SPACE" == *O* ]] #focused desktop color
	then
		echo -ne "\${color1}"
	elif [[ "$SPACE" == *o* ]] 
	then
		echo -ne "\${color3}" #unfocused, non-free desktop color
	else
		echo -ne "\${color2}" #free desktop color
	fi
echo -ne "${SPACE:1} " #print workspaces
done
