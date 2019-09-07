greeting = "hello"
target = "world"
# Concatenation can be used to combine strings:
sentence = greeting + ", " + target
puts sentence # hello, world

# The append operator can also be used to join strings together:
greeting << ", "
greeting << "nature"
puts greeting

# Methods can be applied to strings:
puts "ruby".capitalize
puts "ruby".upcase.reverse

# Multiplication can be used to repeat a word.
puts "ruby " * 4 # Ohhuuohhhuhhohhhohhhuhhh

# Escaping characters:
escaped_single = 'Let\'s escape!'
escaped_double = "They said \"hi\" back"

puts escaped_single
puts escaped_double

# Interpolating values in strings:
sentence = "#{greeting}, #{target.upcase}"
puts sentence
puts "2 + 2 = #{2 + 2}"