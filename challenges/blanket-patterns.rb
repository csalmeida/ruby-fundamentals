# Challenge: Blanket Patterns
# Take a simple string. For instance, "RRGGBBYYKK" and assign it to a variable.
# Output 20 rows of the string.
# In each row, move the first character to the end of the string, and shift the others to fill the empty position.
# For instance the second row would be "RGGBBYYKKR" using the example string.

# This should create a pattern across twenty rows similar to the one below:
# RRGGBBYYKK
# RGGBBYYKKR
# GGBBYYKKRR
# GBBYYKKRRG
# BBYYKKRRGG
# BYYKKRRGGB
# YYKKRRGGBB
# YKKRRGGBBY
# KKRRGGBBYY
# KRRGGBBYYK

# Use loops and or iterators to come up with a solutions.
# Working with the patterns the characters could be accessed like an array,
# using string[0] to get the first character and then the rest of the string using a range string[1..-1]
# Or converting the string into an array, using split. Shift to pull items out of the array and join to reassemble it back into a string for output.