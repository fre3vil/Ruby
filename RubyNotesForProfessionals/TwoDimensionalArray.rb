#!/usr/bin/env ruby
# code by fre3vi


array = Array.new(3) { Array.new(4) {0} }
p array

x = array[0][1]
array[2][3] = 2
p array
