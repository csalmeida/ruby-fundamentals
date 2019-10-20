#!usr/bin/env ruby

# Adds the current number to the accumulator value (memo).
# memo will store the result of the operation on each iteration.
puts (1..5).inject {|memo, n| memo + n}

# The return value is assigned to memo.
# In this case memo will always be zero.
numbers = (1..5).inject do |memo, number|
  memo + number
  x = 0
end
puts numbers

# If no return value is set for when
# the conditional is not met then
# the return value will always be nil unless specified.
numbers = (1..5).inject do |memo, number|
  if number % 2 == 0
    memo + number
  else
    memo
  end
end
puts numbers


fruits = ['mango', 'pineapple', 'papaya', 'guava']

# Adds all items length together.
size = fruits.inject(0) do |memo, fruit|
  memo + fruit.length
end
puts size

# Returns the fruit with the longest name.
longest = fruits.inject do |memo, fruit|
  if fruit.length > memo.length
    fruit
  else
    memo
  end
end
puts longest

# Adds the first letter of each fruit to a string.
# Has empty string as starting value.
mash = fruits.inject('') do |memo, fruit|
  memo << fruit[0].upcase
end
puts mash