#!usr/bin/env ruby

# Title of the game
puts '-' * 19
puts '| Ruby Blanks Game|'
puts '-' * 19

# Sets a value to look for blanks in sentences.
blanks = ['noun', 'noun', 'adjective', 'verb']

# Prompts user to fill in the blanks, one by one.
answers = blanks.map do |blank|
  indefinite_article = blank.start_with?('a') ? 'an' : 'a'
  print "Give me #{indefinite_article} #{blank}: "
  response = gets.chomp
end

# Fills the blanks in the sentence with captured answers.
text = "I went to visit a #{answers[0]} and found a #{answers[1]}, it looked #{answers[2]} so I started to #{answers[3]}."

# Shows complete sentence to the user.
puts text