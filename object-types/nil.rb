# Defining an empty variable.
money_in_the_bank = nil

# Variable will return nil if requested.
puts money_in_the_bank.class # NilClass

# A variable can be checked if it is empty using conditional statements.
# nil == false won't equate to true like null would on other languages.
puts money_in_the_bank.nil? # true
puts money_in_the_bank == nil # true
puts !money_in_the_bank # true