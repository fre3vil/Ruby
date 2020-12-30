#!/usr/bin/env ruby
# code by fre3vi


def assign
  x = 3
  y = 4 + 5
  puts "x is #{x}, y is #{y}"
end

def assignTwo
  x, y = 3, 9
  x, y = y, x
  puts "x is #{x}, y is #{y}"
end

assign()
assignTwo()
