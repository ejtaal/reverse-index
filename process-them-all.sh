#!/bin/sh

#      config     tersify? input     output
#BOOKS="nelson.pl  n  nelson.xml      nelson_neat_revindex_check.csv
BOOKS="s283_book1.pl     y  s283/book1.xml s283_book1_neat_revindex_vX.csv s283/book1.csv
s283_book2.pl     y  s283/book2.xml  s283_book2_neat_revindex_vX.csv  s283/book2.csv
s277_book1.pl     y  s277/book1.xml  s277_book1_neat_revindex_vX.csv  s277/book1.csv
s277_book2.pl     y  s277/book2.xml  s277_book2_neat_revindex_vX.csv  s277/book2.csv
s277_book3.pl     y  s277/book3.xml  s277_book3_neat_revindex_vX.csv  s277/book3.csv
s277_book4.pl     y  s277/book4.xml  s277_book4_neat_revindex_vX.csv  s277/book4.csv
s294_book1.pl     y  s294/book1.xml  s294_book1_neat_revindex_vX.csv  s294/book1.csv
nelson.pl  n  nelson.xml      nelson_neat_revindex_vX.csv"

echo "$BOOKS" | while read config tersify input output; do
	echo "==>> ./process-book.sh \"$config $tersify $input $output\""
	./process-book.sh "$config" "$tersify" "$input" $output
done
