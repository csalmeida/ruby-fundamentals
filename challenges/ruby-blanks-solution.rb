#!usr/bin/env ruby

game_title = 'Ruby Blanks Game'

# Wraps the game title with dashes.
game_title = "| #{game_title} |"
game_title.length.times do
  print '-'
end

puts "\n#{game_title}"

game_title.length.times do
  print '-'
end
puts

# I went to ____ and found a ____, it looked like _____ so I _____.
# Next thing you know, the _____ was _____ like everyone else. It was ______ and ______. 

blanks = ['noun', 'noun', 'adjective', 'verb']
responses = []
# blanks = ['noun', 'verb', 'adjective', 'adjective']

for blank in blanks
  indefinite_article = blank.start_with?('a') ? 'an' : 'a'
  print "Give me a #{blank}: "
  responses << gets.chomp
end