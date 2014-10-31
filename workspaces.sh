#!/bin/bash
# workspaces.sh

for i in {2..11}
do
SPACE=$(bspc control --get-status | cut -d ":" -f $i)
	if [[ "$SPACE" == *u* ]]
	then
		echo -ne "\${color4}"
	elif [[ "$SPACE" == *O* ]]
	then
		echo -ne "\${color1}"
	elif [[ "$SPACE" == *o* ]]
	then
		echo -ne "\${color3}"
	else
		echo -ne "\${color2}"
	fi
echo -ne "${SPACE:1} "
done
