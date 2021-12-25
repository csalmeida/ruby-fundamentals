# Challenge: Pig Latin
# Write a script which converts a single word into pig latin.
# Pig latin is typically a children's game where words are converted into alternative versions according to a set of simple rules.
# Rules:
# For words beginning with one consonant, the consonant moves to the end, followed by "ay". e.g "pig" => "igpay"
# For words that begin with vowel sounds just add "ay" to the end. e.g "elevator" => "elevatoray"
# For words that have a consonant cluster (two or more together), the whole clutes will move to the end, followed by "ay". e.g "glove" => "oveglay" and "where" => "erewhay"
# Define a method called pig_latin that accepts a word as an argument, and returns that word that has been converted into pig latin. 
# Hints:
# It might be helpful to have an array with the different vowels. ['a', 'e', 'i', 'o', 'u']
# The word might be easier to work with if converted into an array.
# If you can identify where the first vowel is, you'll know how many characters to move to the end. 
# Find the first vowel index position and use it to remove other characters up to that position and move them to the end of the string. Only consonants up to the first vowel need to be moved.
# Don't forget to add the "ay" at the end.

# Bonus Challenge: Write methods that work together to convert a whole sentence into pig latin.
# Use good capitalization.
# Preserve punctuation.
# Create a translator program by using a loop to get user input for sentences and show them back in pig latin.