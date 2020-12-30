#!/usr/bin/env ruby
# code by fre3vi




p %w(a b c)[0]
p %w(a b c)[1]
p %w(a b c)[2]
p %w(a b c)[3] # nil
p %w(a b c)[-1] # c

p %w(a b c d)[1..2] # ['b', 'c']
p %w(a b c d)[1...2] # ['b']
p %w(a b c d)[1...-1] # ['b', 'c']


array = Array.new(5) { |i| i+1 }
p array.first # 1
p array.first(2) # [1,2]
p array.last  # 5
p array.last(2) # [4,5]

puts "************"

# random choice 
p array.sample

5.times do |i|
  # random choice 
  p array.sample(2)
end
