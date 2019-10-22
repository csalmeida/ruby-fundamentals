#!usr/bin/env ruby

# Merge can be performed between two hashes.
hash_1 = {:a => 2, :b => 4, :c => 6}
hash_2 = {:a => 3, :b => 4, :d => 8}

# If there's a key conflict the value from the hash being merge in takes precedence by default.
puts hash_1.merge(hash_2)
puts hash_2.merge(hash_1)

# Precedence can be changed if a code block is provided.
puts hash_1.merge(hash_2) {|key,old,new| new}
puts hash_1.merge(hash_2) {|key,old,new| old}

# Further logic can be applied to determine which value should be returned.
puts hash_1.merge(hash_2) {|key,old,new| old < new ? old : new }

# Both values can be used and assigned to a key.
puts hash_1.merge(hash_2) {|key,old,new| old * new }

# Hash contents can also be replaced on merge.
hash_1.merge!(hash_2)
puts hash_1