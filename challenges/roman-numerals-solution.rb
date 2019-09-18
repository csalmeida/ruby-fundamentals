# Lists Roman numerals in an array:
roman_numerals = [
  nil,
  'I',
  'II',
  'III',
  'IV',
  'V',
  'VI',
  'VII',
  'VIII',
  'IX',
  'X'
]

# Confirms this structure is an array.
puts roman_numerals.class

# Accessing the number seven in Roman numeration:
puts roman_numerals[7]

# Accessing zero should return nil as there is no idiom for it in Roman numerals besides the word nulla:
# A class method is used to show output on the terminal.
puts roman_numerals[0].class

# Comparing a number with its Roman numeral annotation evaluates as expected:
puts roman_numerals[4] == 'IV'

# Perhaps a more elegant solution would be using a hash.
# This way the 0-based index characteristic of arrays can be bypassed.
# Notice these were no made into symbols as they can't start with an integer.
# However, hashes can be indexed with integers.
roman_numerals_map = {
  1  => 'I',
  2  => 'II',
  3  => 'III',
  4  => 'IV',
  5  => 'V',
  6  => 'VI',
  7  => 'VII',
  8  => 'VIII',
  9  => 'IX',
  10 => 'X'
}

# Confirms this structure is a hash.
puts roman_numerals_map.class

# Values are accessed the same way as an array.
puts roman_numerals_map[3]
puts roman_numerals_map[10] == 'X'