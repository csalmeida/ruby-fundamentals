#!/usr/bin/env ruby

# There are multiple types of objects that act as enumerables.

range = 1..5

array = [1,2,3,4,5]

hash = [
  one: 1,
  two: 2,
  three: 3,
  four: 4,
  five: 5
]

# Strings act as enumerables but are not one. Counting of characters or bytes needs to be specified.
string = "Hello, Ruby"

# Prints the count of item in all enumerables defined above:
puts "Range: " + range.to_s
puts "Array: " << array.to_s
puts "Hash: #{hash.to_s}"
puts "String: " + string.length.to_s
