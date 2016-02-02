#!/bin/sh

#      config     tersify? input     output
#BOOKS="nelson.pl  n  nelson.xml      nelson_neat_revindex_check.csv
BOOKS="s283_book1.pl     y  s283/*book1*xml s283_book1_neat_revindex_vX.csv
s283_book2.pl     y  s283/*book2*xml s283_book2_neat_revindex_vX.csv
s277_book1.pl     y  s277/book1*xml  s277_book1_neat_revindex_vX.csv
s277_book2.pl     y  s277/book2*xml  s277_book2_neat_revindex_vX.csv
s277_book3.pl     y  s277/book3*xml  s277_book3_neat_revindex_vX.csv
nelson.pl  n  nelson.xml      nelson_neat_revindex_vX.csv"

echo "$BOOKS" | while read config tersify input output; do
	echo "=> $config / $input / $output"
	{
	cat $input | ~/scripts/gen-reverse-pdf-index.pl $config | egrep "^ITEM" \
	| cut -f 2 -d':' | sort -n | uniq \
	| while read num text; do
		if [ "$text" = "$lasttext" -o \
			"**$text**" = "$lasttext" -o \
			"$text" = "**$lasttext**" ]; then
			continue
		fi

		if [ "$tersify" = "y" ]; then
			if [ "$num" != "$lastnum" ]; then 
				echo
				echo -n "$num $text"
			else
				echo -n " / $text"
			fi
			lastnum=$num
		else
			echo "$num $text"
		fi
		lasttext="$text"
	done
	echo
	cat $input | ~/scripts/gen-reverse-pdf-index.pl $config | egrep "^OUTLINE" \
		| cut -f 2 -d':' | sort -n
	} | tee "/tmp/${output}_filtered1" | sort -n | uniq | tee "/tmp/${output}_filtered2" \
		| perl -pi -e 's/(^\s*\d+),\s*(.*?)$/$2\t$1/' \
		| perl -pi -e 's/^\d{9} --/--/' > $output
	echo "Et voila:"
	ls -l $output
done
