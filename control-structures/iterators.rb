# Simple iterator.
index = 5
index.times do
  puts "Countdown: #{index}"
  index -= 1
end
puts "Blast off!"

# The times iterator without decrementing the index.
5.times do |index|
  puts "Countdown: #{index}"
end
puts "Blast off!"

# A more abstracted iterator.
5.downto(1) do |index|
  puts "Countdown: #{index}"
end
puts "Blast off!"

# An iterator that increments the index.
1.upto(3) do |index|
  puts "#{index}, one thousand"
end

# Iterator that runs a set of times using a range.
(2..5).each do |index|
  puts "I see #{index} birds"
end

# A for in can be used instead of each.
# However, each is the most popular approach.
fruits = ['mango', 'pineapple', 'passion fruit']

fruits.each do |index|
  puts "I like #{fruits[index]}"
end

for fruits in fruits
  puts "#{fruit} are nice"
end