# Declaring a hash.
car = {
  'brand' => 'Tesla',
  'model' => 'X',
  'color' => 'blue',
  'interior_color' => 'tan',
  'extras' => true
}

# Reseting a key:
car['color'] = "ruby red"
# Setting a new key after declaration:
car['doors'] = 2

puts "#{car['brand']} #{car['model']}"
puts "This #{car['brand']} is #{car['color']} with #{car['doors']} doors."

# Useful methods.
puts car.keys # Shows available keys of a hash.
puts car.values # Shows all values in a hash.
puts car.length # Counts items inside a hash.

car.size # Counts items inside a hash.
car.to_a # Turns a hash into an array.