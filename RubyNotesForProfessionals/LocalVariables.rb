#!/usr/bin/env ruby
# code by fre3vi




def some_method
  # local variables
  method_scope_var = "hi here"
  p method_scope_var
end

some_method

puts "#################"


2.times do |n|
  local_var = n + 1
  p local_var
end

puts "#################"


if true 
  # local variables declared in if of case blocks can be used in the present scope
  usable = "yay"
end

p usable




puts "#################"



my_variable = "foo"
my_variable.split("").each_with_index do |char, i|
  puts "The character is string '#{my_variable} at index #{i} is #{char}"
end






puts "#################"

overshadow = "sunlight"
["darkness"].each do |overshadow|
  p overshadow
end

p overshadow









