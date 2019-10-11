#!/usr/bin/env ruby
# Output

# These provide the same output.
# Puts adds a line return at the end so print requires one to output the same as puts.
puts "Hello, Ruby"
print "Hello, Ruby\n"

# Input 

print "What is your name? "
# Use chop or chomp to remove the line return character when necessary.
response = gets.chomp
puts "Hello, #{response}!"