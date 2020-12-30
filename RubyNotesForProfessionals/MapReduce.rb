#!/usr/bin/env ruby
# code by fre3vil




array = Array.new(10) {|i| i+1}
puts "array: #{array}"
map_array = array.map.inspect
puts "Map array: #{map_array}"
reduce_array = array.reduce(:+)
puts "Reduce array: #{reduce_array}"

