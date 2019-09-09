# Declaring arrays:
empty_array = []
an_array = ['V', 'B', 'A', 2077]

# Accessing its values:
an_array[0] # a
an_array[3] # 2077
an_array[4] # nil

puts an_array[0]

# Reassigning a value:
an_array[0] = "Bug"
puts an_array[0] # Bug

# Adding a new item at the end of the array:
an_array << "Dex"
puts an_array[4]

# Arrays can contain arrays:
a_second_array = ["Omboa", "Kalunga", "Kimbo", ["Ocuria", "Onjo"]]

# Arrays can be accessed backwards:
ruby_array = ["g","o","r","u","b","y"]
ruby_array[2] # "r"
ruby_array[-1] # "y"

# Access a range of values within an array:
ruby_array[2,4] # ["r","u","b","y"]
ruby_array[-2,2] # ["b","y"]
ruby_array[2..3] # ["r","u"]
ruby_array[-4..-1] # ["r","u","b","y"]

# Array Methods
mixed_array = [2,4,['a', 'b'], nil, 4, 'c']
mixed_array.length # 6
mixed_array.size # 6
mixed_array.reverse # ["c", 4, nil, ["a", "b"], 4, 2]
mixed_array.shuffle # [["a", "b"], 4, nil, 2, 4, "c"]

# Adding a ! to the methods makes changes to the value permanent.
mixed_array.uniq! # [2, 4, ["a", "b"], nil, "c"]
mixed_array.compact! # [2, 4, ["a", "b"], "c"]
mixed_array.flatten! # [2, 4, "a", "b", "c"]

# The ? can be used to query an object.
mixed_array.include?(2) # true
mixed_array.delete_at(1) # 4
mixed_array # [2, "a", "b", "c"]
mixed_array.delete('c') # c
mixed_array # [2, "a", "b"]

# Arrays can be made into strings and strings into arrays:
[1,2,3,4,5].join(',') # "1,2,3,4,5"
"1,2,3,4,5".split(',') # [1,2,3,4,5]

# Other manipulation methods:
 mixed_array.push("X") # Adds to the end of an array.
 mixed_array.pop # Removes last item on array.
 mixed_array.shift # Removes the first item and readjusts the others to fill the empty space.
 mixed_array.unshift # Removes the last item and readjusts the others to fill the empty space.