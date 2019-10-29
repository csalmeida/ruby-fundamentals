#!usr/bin/env ruby

# Defines a methods with multiple arguments.
def volume(x, y, z)
  x * y * z
end

puts volume(2,3,4)
puts volume(5,7,8)
puts volume(42,86,22)

# The order of arguments passed in matters.
def introduction(greeting, name)
  puts "#{greeting}, #{name}."
end

# Here the name is passed in first, resulting on a different output than expected.
introduction("Yoda","I am") # "Yoda, I am."
introduction("I am","Groot") # "I am, Groot."

# Arguments can be optional, any object can be passed as a default value.
def greet(greeting="Hello", name="World")
  puts "#{greeting}, #{name}"
end

# Calls greet with no arguments so default ones are used.
# As per convention the parentheses are kept.
greet()

welcome_options = {
  name: "Geralt",
  punctuation: "..."
}

# A hash with optional arguments is passed, allowing more flexibility.
# Each expected key is checked for a value inside the method.
def welcome(greeting, options={})
  name = options[:name] || 'friend'
  punct = options[:punctuation] || '!'
  greeting + ' ' + name + punct
end

# The greeting arg is always passed in but the options hash is optional.
puts welcome("It's you,", welcome_options);
puts welcome("Hello");
