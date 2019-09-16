# A variable to use in conditionals.
fruit = 'mango'

# This code runs when this condition is met.
if fruit == 'mango'
  puts "A #{fruit.upcase}! They're so tasty!"
end


# Reseting the variable to another value.
fruit = 'pineapple'

# Since the condition is not met it will run the statements in the else block.
if fruit == 'mango'
  puts "A #{fruit.upcase}! They're so tasty!"
else
  puts "Oh! I guess there are no Mangoes left."
end

# In this case the first condition is not met.
# However, there is a second condition introduced which is met and will run.
# The else statement won't run in this case.
if fruit == 'mango'
  puts "A #{fruit.upcase}! They're so tasty!"
elsif fruit == 'pineapple'
  puts "Pineapples are nice too, though a bit controversial on pizza."
else
  puts "Oh! I guess there's no fruit left."
end

# The unless keyword means the opposite of if. (if not)
unless fruit == 'mango'
  puts "This fruit is not a mango."
end

# The case statement is useful to add a number of comparisons to a block.
case
when fruit == 'mango'
  puts "A #{fruit.upcase}! They're so tasty!"
when fruit.length > 5
  puts "The name of this fruit is long."
when fruit = 'pineapple'
  puts "Pineapples are nice too, though a bit controversial on pizza."
else
  puts "Oh! I guess there's no fruit left."
end

# Comparisons in cases can be applied similar to a switch statement as well.
case fruit
when 'mango'
  puts "A #{fruit.upcase}! They're so tasty!"
when 1
  puts "Fruit cannot be a number."
when 'pineapple'
  puts "Pineapples are nice too, though a bit controversial on pizza."
else
  puts "Oh! I guess there's no fruit left."
end

# A ternary operator can be used for simple comparisons.
puts fruit == 'mango' ? "A #{fruit.upcase}! They're so tasty!" : "Oh! I guess there are no Mangoes left."

# Using the OR operator to set a fallback value if the first doesn't exist.
favorite_fruit = fruit || 'apple'
puts "#{favorite_fruit.capitalize} is the favourite fruit."

# Using the OR operator to check for two conditionals.
if fruit == 'mango' || fruit == 'pineapple'
  puts "A #{fruit.upcase}! They're so tasty!"
else
  puts "Oh! I guess there are no Mangoes left."
end

# Using the OR operator to set a default value if the current one is nil.
favorite_fruit = nil
favorite_fruit ||= 'passion fruit'
# The same statement as above using unless.
favorite_fruit = 'passion fruit' unless favorite_fruit

puts "#{favorite_fruit.capitalize} is now the favourite fruit."

# Only prints if the statement to the right applies.
puts favorite_fruit if fruit == favorite_fruit