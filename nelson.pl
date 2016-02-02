
# 2 dim array, @[0] for even pages @[1] for odd ones
# This needs to be either detected or sussed out beforehand and given
# as a parameter somehow
# Also, this obviously implies all even/odd pages of the index have roughly
# the same layout.
# Nelson peadiatrics pdf:
avg_indent => 11.0,
column_left => [ [ 0, 54, 324, 594], [ 0, 81, 351, 621]],
comma_index => 1,
space_index => 0,
trust_indent_guess_fully => 0,
# There's no bold in this one
marked_lines => [ 'font="123"', '<b>' ],
bad_lines => [ 'font="23"' ],
