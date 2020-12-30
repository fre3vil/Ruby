#!/usr/bin/env ruby
# code by fre3vil


array = Array.new(3) { |i| i + 1 }


# permutation
p "permutation"
p array.permutation
p array.permutation.to_a
p array.permutation(2).to_a
p array.permutation(4).to_a	# []


# combination
# p array.combination(1)
# array.combination(1).to_a [ [1], [2], [3] ]
# p array.combination(3).to_a [ [1, 2, 3] ]
# p array.combination(4).to_a [ ]


p "combination"
p array.combination(3).to_a
p array.repeated_combination(3).to_a.length
p array.combination(3).to_a.length
p array.repeated_combination(5).to_a.length



