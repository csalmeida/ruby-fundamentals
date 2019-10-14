#!usr/bin/env ruby

# Using the do-end format to define a block.
1.times do 
  puts "do-end format block"
end

# Using a curly-brace format block.
1.times { puts "curly-brace format block" }

# Block variables can be used in both formats
1.upto(2) do |number|
  puts "do-end format block, number: #{number}"
end

3.upto(4) { |number| puts "curly-brace format block, number: #{number}" }