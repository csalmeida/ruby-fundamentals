#!/usr/bin/env ruby
puts '----------------------'
puts '| Ruby Guessing Game |'
puts '----------------------'

# Retrieving the user name and printing greeting:
print "\nWhat is your name? "
user_name = gets.chomp
puts "Hello, #{user_name}!"

# Generating random number:
MAX_NUMBER = 10
MAX_ATTEMPTS = 3
RANDOM_NUMBER = rand(MAX_NUMBER) + 1

# Printing game instructions:
puts
puts "We're going to play a guessing game."
puts "Try to guess the secret number, it can be any from 0 to #{MAX_NUMBER}"
puts "You can try to guess the number #{MAX_ATTEMPTS} times."
puts

# Ask the user for a guess and let them know if they got it right or to try again:
1.upto(MAX_ATTEMPTS) do |guess_number|
  print "Guess #{guess_number}: "
  guess = gets.chomp.to_i
  
  # Lets players know that hey have ran out of attempts.
  if guess_number == MAX_ATTEMPTS
    puts "That was your last guess, thanks for playing."
  end

  if guess == RANDOM_NUMBER
    puts "Great guessing! #{RANDOM_NUMBER} was the correct answer."
    break
  else
    puts "Sorry, that wasn't it."
  end
end

puts "Goodbye!"
exit