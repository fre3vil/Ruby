#!/usr/bin/env ruby
# code by fre3vil

5.times {puts "Hello ruby"}

5.times do |i|
  puts i
end




# yield

def block_caller
  puts "come code"
  yield
  puts "come other code"
end

block_caller {puts "calling yield blocks."}
