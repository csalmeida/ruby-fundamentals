#!usr/bin/env ruby

# Defines a method to show the title of the game.
def show_game_title(title)
  formatted_title = '| ' + title + ' |'
  dashes = '-' * formatted_title.length
  puts dashes
  puts formatted_title
  puts dashes
end

# Checks if string has punctuation.
def punctuation?(string)
  signs = [',', '.', ':', ';', '?', '!', '–']
  string.split(//).any? {|character| signs.include?(character) }
end

# Removes punctuation at the end of a string.
def remove_punctuation(string)
  punctuation?(string) ? string.chop! : string
end

# Returns punctuation being used on a string is needed.
def get_punctuation(string)
  punctuation?(string) ? string.chars.last : ''
end

# Converts a word into Pig latin.
def pig_latin(word)
  vowels = ['a', 'e', 'i', 'o', 'u']
  suffix = 'ay'
  position = 0
  word = word.split(//)

  word.any? do |character|
    if vowels.include?(character)
      position = word.find_index(character)
    end
  end

  word = word.join.downcase
  punctuation = punctuation?(word) ? word.chars.last : ''
  word_start = punctuation?(word) ? word[position..-2] : word[position..-1]

  if position > 0
    word = word_start + word[0...position] + suffix + punctuation 
    return word
  end

  word = word + suffix
end

# Converts a whole sentence into Pig latin.
def sentence_to_pig_latin(sentence)
  sentence = sentence.split(' ')
  sentence.map! do |word|
    punctuation = get_punctuation(word)
    word = remove_punctuation(word.downcase)
    pig_latin(word) + punctuation
  end
  sentence.join(' ')
end

# Capitalizes words after certain punctuation.
def format_sentence(sentence)
  pattern = /([\.\?\!] [A-z])/
  scan = sentence.scan(pattern).flatten
  scan.each do |occurence|
    replacement = occurence.upcase
    sentence.sub!(occurence, replacement)
  end
  sentence[0] = sentence[0].upcase
  sentence
end

# Translates sentences into Pig Latin.
# Run indefinetly until user types 'quit' or 'exit'
def pig_latin_translator
  input = nil
  until input == 'quit' || input == 'exit'
    print "Translate > "
    input = gets.chomp
    input.strip == '' ? redo : nil
    puts format_sentence(sentence_to_pig_latin(input))
  end
end

show_game_title('Pig Latin Translator')
pig_latin_translator