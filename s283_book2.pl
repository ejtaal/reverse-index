# Open Uni S283 Book 2 pdf:
avg_indent => 27.0,
#column_left => [ [ 0, 60, 326, 591], [ 0, 122, 386, 651]],
# pdftoxml and okular disagree about page numbering! doh!
column_left => [  [ 0, 122, 386, 651], [ 0, 60, 326, 591]],
comma_index => 1,
space_index => 0,
trust_indent_guess_fully => 1,
# Strings to mark, i.e. bolded text, "key words" etc.
# Yeah pdftohtml works a bit weird, 14 is normal 13 bold for this book :-??!
#marked_lines => [ 'height="13"', 'height="16"' ],
marked_lines => [ 'font="10"><b>' ],
#bad_lines => [ 'font="0">','mainly, or wholly, in a ﬁgure or','Entries and page numbers in' ],
bad_lines => [ 'font="0">' ],
#marked_lines => qw{
#	'height="13"'
#	'height="16"'
#	},
