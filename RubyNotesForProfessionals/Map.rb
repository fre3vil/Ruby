#!/usr/bin/env ruby
# code by fre3vi




array = Array.new(3) { |i| i + 1 }
p array

# map
p array.map { |i|  i * 3 } 

p ['1','2','3','4','5'].map { |i| i.to_i }

p %w(1 2 3 4 5 6 7 8 9 10).map(&:to_i)

p %w(1 2 3 4 5 6 7 8 9 10).map(&->(i){ i.to_i * 2 })





































