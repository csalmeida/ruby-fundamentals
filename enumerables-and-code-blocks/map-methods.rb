#!usr/bin/env ruby

# Mapping the values of x to the values of y.
# In this case adds 1 to each item.
x = [1,2,3,4,5]
y = x.map {|number| number + 1}
puts y # [2,3,4,5,6]

# Map will always return an array, even when a hash is used,
# an array will be returned instead. 
scores = {low: 2, high: 8, average: 6}
adjusted_scores = scores.map do |key,value|
  "#{key.capitalize}: #{value * 100}"
end
puts adjusted_scores # ['Low: 200', 'High: 800', 'Average: 600']

# If a condition only applies to an item on the enumerable, it would only affect it and others will be set to nil.
fruits = ['pineapple', 'mango', 'passion fruit']
mapped_fruits = fruits.map do |fruit|
  if fruit == 'passion fruit'
    fruit.capitalize
  end
end
puts mapped_fruits # [nil, nil, 'Passion fruit']

# In order to return an array with all the items, the default value can be returned in the block.
mapped_fruits = fruits.map do |fruit|
  if fruit == 'passion fruit'
    fruit.capitalize
  else
    fruit
  end
end
puts mapped_fruits # ['pineapple', 'mango', 'Passion fruit']

# Another case is using puts. It will always return an array where all the values are nil (the return value of puts)
mapped_fruits = fruits.map do |fruit|
  puts fruit.upcase
end
puts mapped_fruits # [nil, nil, nil]

# Using map! or collect! will mpodify the array instead of returning a new one.
fruits.map! do |fruit|
  fruit.capitalize
end
puts fruits