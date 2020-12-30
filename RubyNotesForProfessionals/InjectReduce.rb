#!/usr/bin/env ruby
# code by fre3vil





array = Array.new(5) { |i| i + 1 }
p "array is: #{array}" # [1,2,3,4,5]

p array.reduce { |a,b| a + b } # 15
p array.reduce(0) { |a,b| a + b } # 15


p array.reduce(0, :+)  # 15
p array.reduce(10, :+)  # 15 + 10 = 25
p array.reduce(:+)  # 15



