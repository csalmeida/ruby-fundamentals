#!usr/bin/env ruby

fruits = ['mango', 'pineapple', 'papaya', 'guava', 'apricot']

# Sorting an enumerable of strings with default behaviour (alphabetically)
default_sort = fruits.sort
puts '[' + default_sort.join(', ') + ']'

# Sorts the same enumerable but by word length.
length_sort = fruits.sort do |fruit_1, fruit_2|
  fruit_1.length <=> fruit_2.length
end
puts '[' + length_sort.join(', ') + ']'

# There is also sort_by that can sort based on a single property.
fruits.sort_by {|fruit| fruit.length}

# Sorts can be permanent with both methods.
fruits.sort!
puts '[' + fruits.join(', ') + ']'

fruits.sort_by! {|fruit| fruit.length}
puts '[' + fruits.join(', ') + ']'

# Sorting hashes will always return an array:
hash = {a:4, y:1, c:5, b:3}

# The sort converts the hash into an array prior to sorting, like so:
# [[a:, 4], [y:, 1], [c:, 5], [b:, 3]]
# Sorts by key
hash_key_sort = hash.sort do |pair_1, pair_2|
  pair_1[0] <=> pair_2[0]
end

puts '[' + hash_key_sort.join(', ') + ']'

# Sorts by value
hash_value_sort = hash.sort do |pair_1, pair_2|
  pair_1[1] <=> pair_2[1]
end

puts '[' + hash_value_sort.join(', ') + ']'