#!usr/bin/env ruby

# A local variable called value defined on the file itself.
value = 10

# A method with its own local variable called value.
def output_value
  value = 5
  puts value
end

# Both variables were defined in their local scopes, therefore they print different values.
output_value # Will print 5, not 10.
puts value # Will print 10, not 5.