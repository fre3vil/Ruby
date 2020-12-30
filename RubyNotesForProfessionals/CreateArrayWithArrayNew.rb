#!/usr/bin/env ruby
# code by fre3vi





a = Array.new 3 # [nil, nil, nil]
b = Array.new 3, :x # [:x, :x, :x]
c = Array.new(3) { |i| i.to_s } # ["0", "1", "2"]




array = %i(one two three) # [:one, :two , :three]

p array

