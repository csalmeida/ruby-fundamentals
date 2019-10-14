#!usr/bin/env ruby

# Defines a range enumerable.
range = 1..10
# Detect does the same but this block is looking for any items divisble by 3.
puts range.detect {|number| number % 3 == 0 }

# Defines an array enumerable.
fruits = ["pineapple", "mango", "papaya", "banana"]
# Other conditions can be passed in as required.
puts fruits.find {|fruit| fruit.length > 5 }

# Defines a hash enumerable.
pantry = { "pineapple" => 0, "mango" => 3, "papaya" => 1, "banana" => 0 }
# Finds any fruits where the amount is 0. (fruit is key, amount is value)
puts pantry.find {|fruit,amount| amount == 0 }

# The find_all method will return all occurences of when the condition is met.
puts range.find_all {|number| number % 3 == 0 }

# Checks if there are any numbers equal or less than five in the range.
puts range.any? {|number| number <= 5 }
# Checks if there aren't any numbers equal or less than five in the range.
puts range.none? {|number| number <= 5 }
# Checks if there is one number equal to five in the range.
puts range.one? {|number| number == 5 }

# Are all items in the pantry stocked? 
puts pantry.all? {|fruit,amount| amount >=5 }

# Defines an array enumerable.
numbers = [*1..10]
# Gets all even numbers since the odd ones are removed.
puts numbers.delete_if {|number| number % 2 == 1 }