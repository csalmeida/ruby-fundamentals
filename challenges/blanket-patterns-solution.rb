# Template for the pattern.
template = 'RRGGBBYYKK'

# 1: Using a loop to output the pattern.
index = 0
loop do
  break if index > 20
  puts template
  template = template[1..-1] + template.slice(0)
  index += 1
end

# 2: Using a while loop to output the pattern.
index = 0
while index <= 20
  puts template
  template = template.split('')
  first_character = template.shift 
  template = template.join + first_character
  index += 1
end

# 3: Using a until loop to output the pattern.
index = 21
until index <= 0
  puts template
  template = template.split('')
    first_character = template.shift 
    template = template.join + first_character
  index -= 1
end

# 4: Using the times iterator.
index = 21
index.times do
  puts template
  template = template[1..-1] + template.slice(0)
end

# 5: Using the upto iterator.
0.upto(20) do
  puts template
  template = template[1..-1] + template.slice(0)
end

# 6: Using the downto iterator.
20.downto(0) do
  puts template
  template = template[1..-1] + template.slice(0)
end

# 7: Using the each iterator.
(0..20).each do
  puts template
  template = template[1..-1] + template.slice(0)
end