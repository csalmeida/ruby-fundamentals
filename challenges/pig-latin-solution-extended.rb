#!usr/bin/env ruby

# Defines a method to show the title of the game.
def show_game_title(title)
  formatted_title = '| ' + title + ' |'
  dashes = '-' * formatted_title.length
  puts dashes
  puts formatted_title
  puts dashes
end

def punctuation?(string)
  signs = [',', '.', ':', ';', '?', '!', '–']
  string.split(//).any? {|character| signs.include?(character) }
end

def remove_punctuation(string)
  punctuation?(string) ? string.chop! : string
end

def get_punctuation(string)
  punctuation?(string) ? string.chars.last : ''
end

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

def sentence_to_pig_latin(sentence)
  sentence = sentence.split(' ')
  sentence.map! do |word|
    punctuation = get_punctuation(word)
    word = remove_punctuation(word.downcase)
    pig_latin(word) + punctuation
  end
  sentence.join(' ')
end

def format_sentence(sentence)
 sentence = sentence.capitalize.split(//)
 sentence = sentence.map.with_index(0) do |character, index|
  if character == '.' and index != sentence.length
    sentence[index+2].capitalize
  end
    character
 end
 sentence.join('')
end


show_game_title('Pig Latin Translator')
sentence = "Next thing you know, the dragon was having a laugh like everyone else. It was strange and loud."
puts sentence
puts format_sentence(sentence_to_pig_latin(sentence))