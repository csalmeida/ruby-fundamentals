#!usr/bin/env ruby

# Defines a method to show the title of the game.
def show_game_title(title)
  formatted_title = '| ' + title + ' |'
  dashes = '-' * formatted_title.length
  puts dashes
  puts formatted_title
  puts dashes
end

def pig_latin(word)
  # Sets a few values to help work with word.
  vowels = ['a', 'e', 'i', 'o', 'u']
  suffix = 'ay'
  position = 0
  # Turns word into an array.
  word = word.split(//)

  # If word has a vowel then return its position in the array.
  word.any? do |character|
    if vowels.include?(character)
      position = word.find_index(character)
    end
  end
  
  # Turns word back into a string.
  word = word.join

  # If the position is above 0, the word starts with one or more consonants.
  # It concatenates the characters from the vowel until the end of the word with the consonants and the suffix at the end.
  if position > 0
    word = word[position..-1] + word[0...position] + suffix
    return word
  end
  # If the word starts with a vowel it will be the last value returned.
  word = word + suffix
end

show_game_title('Pig Latin')
puts pig_latin('Ruby').capitalize

