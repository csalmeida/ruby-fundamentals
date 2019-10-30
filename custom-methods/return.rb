#!usr/bin/env ruby

# The last operation's statement is returned.
# In this case, "Hey".
def greet
  greeting = "Hi"
  greeting = "Yo"
  greeting = "Hey"
end

puts greet

# The return value can be explicitly declared as needed.
def greet_again(cool = false)
  if cool
    return greeting = "Yo"
  end
  greeting = "Hello"
end

cool = true
puts greet_again(cool)

# The last statement has a conditional 
# that when it is not met returns nil.
# This can lead to unexpected behaviour.
def subtract(number_1, number_2)
  result = number_1 - number_2
  result = 0 if result < 5
end

# The return value might be nil
puts subtract(8, 3).class

# To avoid unexpected behaviour if condition is not met,
# The value might be specified again to make sure it returns correctly.
def add(number_1, number_2)
  result = number_1 + number_2
  result = 0 if result < 5
  result
end

puts add(8, 3)

# Multiple values can be returned in an array or hash.
def add_and_subtract(number_1, number_2)
  add = number_1 + number_2
  subtract = number_1 - number_2
  [add, subtract]
end

# Multiple assignment can be used to take values out of an array and assign them to variables.
add_result, sub_result = add_and_subtract(15,2)
puts "Addition result was #{add_result} whilst subtraction was #{sub_result}."
