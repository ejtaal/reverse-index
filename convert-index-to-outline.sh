#!/bin/sh

# This assumes input taken from Okular, Table selection tool,
# pasted into Libreoffice and saved as a .csv file.

# This initializes the $cur_outline_indent variable in the script:
echo '<outline>'

# Some ugly book specific regexpes here. What can you do right...

sed 's/^\(CHAP.*\)/<\/outline>\n\1\n<outline>\n/' \
	| sed 's/\(CHAP.*\)3 3/\1 - /' \
	| sed 's/^\(.*\),\([0-9]*\)$/<item page="\2">\1<\/item>/'
