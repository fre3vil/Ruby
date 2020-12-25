#!/usr/bin/env ruby
# code by fre3vil


[1, 2, 3].each do |item|
    next if item.even?
    puts "Item: #{item}"
end