#!usr/bin/env ruby

# Defines a method that can take a name as a parameter.
def greet(name)
  puts "Hello, #{name}"
end

# Call the method passing its required parameter (name).
greet('Skoglund')


# Defines a method that takes an array of strings and returns the longest one.
def longest(string)
  if string.class == String
    words = string.split(' ').sort_by! {|word| word.length}
    words.last
  else
    nil
  end
end


# Looks for the longest word in the following sentence:
sentence = "The quick brown fox jumps over the lazy dog"
puts longest(sentence)