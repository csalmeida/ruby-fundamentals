# Using symbols in a hash.
person = {
  :first_name => "Richard",
  :last_name => "Bona"
}

# Hash symbol shorthand.
another_person = {
  first_name: "Esperanza",
  last_name: "Spalding"
}

# Accessing hash values with symbols.
puts person[:last_name]
puts another_person[:last_name]