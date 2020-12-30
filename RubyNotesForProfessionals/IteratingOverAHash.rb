#!/usr/bin/env ruby
# code by fre3vil


# each
hash = {"first"=>"John", "last"=>"Bob"}
hash.each do |key, value|
  puts "Key: #{key} Value: #{value}"
end

# each_key
hash.each_key do |key|
  puts "Key : #{key}"
end

# each_value
hash.each_value do |value|
  puts "Value : #{value}"
end

# each_with_index

hash.each_with_index do |(key, value), index|
  puts "Index: #{index} Key: #{key} Value: #{value}"
end


