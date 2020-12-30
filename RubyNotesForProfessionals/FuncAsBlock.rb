#!/usr/bin/env ruby
# code by fre3vil



def inc(num = 0)
  num + 1
end

array = Array.new(3) { |i| i }
p array.map &method(:inc) # [1,2,3]
