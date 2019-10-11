#!/usr/bin/env ruby
game_title = '| Ruby Guessing Game |'

# Wraps the game title with dashes.
game_title.length.times do
  print '-'
end

puts "\n#{game_title}"

game_title.length.times do
  print '-'
end

# Retrieving the user name and printing greeting:
puts "\nWhat is your name? "
print "-> "
USER_NAME = gets.chomp.capitalize
puts
puts "Hello, #{USER_NAME}!"

# Printing game instructions:
puts
puts "We're going to play a guessing game."
puts "Try to guess the secret number, it can by anything from 1 to a number of your choosing."
puts
# Pick a maximum number.
puts "What is the maximum value the secret number could be? "
print "-> "
user_max_number = gets.chomp.to_i
puts
# Only store input if user typed a number.
until user_max_number.is_a?(Integer) && user_max_number != 0
  puts "Try a number (can't be 0): "
  print "-> "
  user_max_number = gets.chomp.to_i
  puts
end
MAX_NUMBER = user_max_number

# Generating random number:
RANDOM_NUMBER = rand(1..MAX_NUMBER)
MAX_ATTEMPTS = MAX_NUMBER > 10 ? 10 : 5

puts "You chose a limit of #{MAX_NUMBER} and can try to guess the number #{MAX_ATTEMPTS} times."

# Ask the user for a guess and let them know if they got it right or to try again:
1.upto(MAX_ATTEMPTS) do |guess_number|
  print "Guess #{guess_number}: "
  guess = gets.chomp.to_i

  # Only store input if user typed a number.
  until guess.is_a?(Integer) && guess != 0
    puts "Try a number (can't be 0): "
    print "-> "
    guess = gets.chomp.to_i
    puts
  end

  # Use to determine how close is guess from the answer.
  if guess > RANDOM_NUMBER
    guess_difference = guess - RANDOM_NUMBER.to_f 
  else
    guess_difference = RANDOM_NUMBER - guess.to_f
  end

  case
  when guess == RANDOM_NUMBER
    puts "Great guessing! #{RANDOM_NUMBER} was the correct answer."
    break
  when guess_number == MAX_ATTEMPTS
    puts "That was your last guess, thanks for playing."
  when (guess_difference / guess.to_f) <= 0.25
    puts "Getting hot, you're close!"
  when (guess_difference / guess.to_f) <= 0.35
    puts "Warm, but that wasn't it."
  when (guess_difference / guess.to_f) >= 0.60
    puts "Cold. Try again"
  when (guess_difference / guess.to_f) >= 1.0
    puts "Freezing cold. Try again"
  else
    puts "Sorry, that wasn't it."
  end
end

puts "Goodbye!"
exit