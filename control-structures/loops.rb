# A simple loop in Ruby (uncommon).
index = 5
loop do
  break if index <= 0
  puts "Countdown: #{index}"
  index -= 1
end
puts "Blast off!"

# A while loop in Ruby.
index = 5
while index >= 0
  puts "Countdown: #{index}"
  index -= 1
end 
puts "Blast off!"

# An until loop in Ruby.
index = 5
until index <= 0
  puts "Countdown: #{index}"
  index -= 1
end 
puts "Blast off!"

# An example with an array.
terms = ['Quimbo', 'Omboa', 'Oweve', "Lombongo"]
until terms.empty?
  term = terms.shift
  puts term
end