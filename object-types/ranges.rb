# Declaring an inclusive and exclusive range:
inclusive = 1..10 # 1 to 10
exclusive = 1...10 # 1 to 9

# A few methods that apply to a range.
puts inclusive.begin # 1
puts inclusive.first # 1
puts inclusive.end # 10
puts exclusive.first # 1
puts exclusive.end # 10 (surprising right?)

# Exploding a range into an array.
numbers = [*inclusive] # [1,2,3,4,5,6,7,8,9,10]
puts numbers

# Ranges can be made of any objects where a sequencial order applies.
alphabet = 'a'..'z' # A range with the letters a to z.
puts alphabet.include?('c') # true
letters = [*alphabet]
puts letters