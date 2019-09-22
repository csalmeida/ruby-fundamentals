#!/usr/bin/env ruby

legends = ['omboa', 'kalunga', 'laripo']

legends.each do |legend|
  if legend == 'kalunga'
    # Exit the script without running anything else.
    # exit
    # exit!
    abort("#{legend.capitalize} called off the gathering.")
  end
  puts "#{legend.capitalize} joined the circle."
end

puts "There are #{legends.count} legends here."