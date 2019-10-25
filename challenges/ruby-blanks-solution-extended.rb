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

# Sets a value to look for blanks in sentences.
BLANK_FLAG = '-----'
# Stores all sentences and types of blanks in a single place.
SENTENCES = [
  {
    :text => "I went to visit a #{BLANK_FLAG} and found a #{BLANK_FLAG}, it looked #{BLANK_FLAG} so I started to #{BLANK_FLAG}.",
    :blanks => ['noun', 'noun', 'adjective', 'verb']
  },
  {
    :text => "Next thing you know, the #{BLANK_FLAG} was having a #{BLANK_FLAG} like everyone else. It was #{BLANK_FLAG} and #{BLANK_FLAG}.",
    :blanks => ['noun', 'verb', 'adjective', 'adjective']
  }
]

# Selects a random sentence from the available ones.
random_position = rand(0..(SENTENCES.length - 1)) 
selected_sentence = SENTENCES[random_position]

# Prompts user to fill in the blanks, one by one.
# Assigns answers to a responses array.
# The array will have the same items as blanks as a map is being executed.
responses = selected_sentence[:blanks].map do |blank|
  indefinite_article = blank.start_with?('a') ? 'an' : 'a'
  print "Give me #{indefinite_article} #{blank}: "
  response = gets.chomp
end

# Converts sentence into an array enumerable to become easier to iterate through.
selected_sentence[:text] = selected_sentence[:text].split(' ')

# This index is used to assign responses to the blanks.
index = -1
# Creates a sentence with the responses by checking if word has a a blank to be filled.
# It replaces only the blank with the response in order to keep punctuation, if existent.
complete_sentence = selected_sentence[:text].map do |word|
  if word.include?(BLANK_FLAG)
    index += 1
    word.sub!(BLANK_FLAG, responses[index])
  else
    word
  end 
end

# Turns sentence into a string to be displayed to the user.
puts complete_sentence.join(' ')